.class public final enum Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
.super Ljava/lang/Enum;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label; = null

.field public static final enum LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label; = null

.field public static final LABEL_OPTIONAL_VALUE:I = 0x1

.field public static final enum LABEL_REPEATED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label; = null

.field public static final LABEL_REPEATED_VALUE:I = 0x3

.field public static final enum LABEL_REQUIRED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label; = null

.field public static final LABEL_REQUIRED_VALUE:I = 0x2

.field private static final VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3585
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_OPTIONAL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3589
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_REQUIRED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3597
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_REPEATED"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3576
    new-array v0, v5, [Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3638
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label$1;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 3658
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->values()[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 3672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3673
    iput p3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->index:I

    .line 3674
    iput p4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->value:I

    .line 3675
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 3655
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3635
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    .locals 1
    .parameter "value"

    .prologue
    .line 3625
    packed-switch p0, :pswitch_data_0

    .line 3629
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3626
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 3627
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 3628
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 3625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    .locals 2
    .parameter "desc"

    .prologue
    .line 3662
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3666
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    .locals 1
    .parameter "name"

    .prologue
    .line 3576
    const-class v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .prologue
    .line 3576
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v0}, [Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 3651
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 3622
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 3647
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
