.class public final enum Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
.super Ljava/lang/Enum;
.source "CursorEntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/CursorEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrependEntityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

.field public static final enum COMMUNICATION_TARGETS:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

.field public static final enum PLUS_SHARES:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    const-string v1, "COMMUNICATION_TARGETS"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->COMMUNICATION_TARGETS:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    .line 43
    new-instance v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    const-string v1, "PLUS_SHARES"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->PLUS_SHARES:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    sget-object v1, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->COMMUNICATION_TARGETS:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->PLUS_SHARES:Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->$VALUES:[Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->$VALUES:[Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    invoke-virtual {v0}, [Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/entity/CursorEntityListFragment$PrependEntityType;

    return-object v0
.end method
