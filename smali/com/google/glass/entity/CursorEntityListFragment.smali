.class public abstract Lcom/google/glass/entity/CursorEntityListFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "CursorEntityListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/CursorEntityListFragment$1;,
        Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;,
        Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/entity/EntityListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final CURSOR_LOADER_ID:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

.field private prependCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "protobuf_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;-><init>(Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;)V
    .locals 1
    .parameter "prependEntityType"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListFragment;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/entity/CursorEntityListFragment;->createPrependEntityCursor(Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    .line 60
    :cond_0
    return-void
.end method

.method private createPrependEntityCursor(Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;)Landroid/database/Cursor;
    .locals 4
    .parameter "prependEntityType"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    .line 82
    .local v0, entityHelper:Lcom/google/glass/entity/EntityHelper;
    sget-object v2, Lcom/google/glass/entity/CursorEntityListFragment$1;->$SwitchMap$com$google$glass$entity$CursorEntityListFragment$PrependEntityType:[I

    invoke-virtual {p1}, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 90
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 84
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper;->getSpeakableCommunicationTargets()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, prependEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :goto_0
    new-instance v2, Lcom/google/glass/entity/EntityListCursor;

    sget-object v3, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/glass/entity/EntityListCursor;-><init>([Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 87
    .end local v1           #prependEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper;->getSpeakablePlusShareTargets()Ljava/util/List;

    move-result-object v1

    .line 88
    .restart local v1       #prependEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method protected abstract createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    return-object v0
.end method

.method protected getPrependCursorSize()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;-><init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 67
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;->createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/glass/entity/EntityListFragment;->onDestroy()V

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 73
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {v1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p2
    .local v0, data:Landroid/database/Cursor;
    move-object p2, v0

    .line 121
    .end local v0           #data:Landroid/database/Cursor;
    .restart local p2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 122
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/CursorEntityListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 127
    return-void
.end method

.method protected setCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {v1, p1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 148
    .local v0, count:I
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 149
    if-nez v0, :cond_0

    .line 150
    sget-object v1, Lcom/google/glass/entity/CursorEntityListFragment;->TAG:Ljava/lang/String;

    const-string v2, "Cursor had no data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0           #count:I
    :cond_0
    return-void
.end method

.method protected showFastScrollLabel(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->showFastScrollLabel(I)Z

    move-result v0

    goto :goto_0
.end method
