.class public final enum Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;
.super Ljava/lang/Enum;
.source "HorizontalScrollItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/horizontalscroll/HorizontalScrollItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

.field public static final enum FOCUSED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

.field public static final enum LOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

.field public static final enum SETTLED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

.field public static final enum UNLOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    const-string v1, "UNLOADED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->UNLOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 21
    new-instance v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->LOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 24
    new-instance v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    const-string v1, "FOCUSED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->FOCUSED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 27
    new-instance v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    const-string v1, "SETTLED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->SETTLED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    sget-object v1, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->UNLOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->LOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->FOCUSED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->SETTLED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->$VALUES:[Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->$VALUES:[Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    invoke-virtual {v0}, [Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    return-object v0
.end method
