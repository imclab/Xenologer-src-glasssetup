.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;
.super Ljava/lang/Object;
.source "AsyncBluetoothSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

.field final synthetic val$bufferCopy:[B

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;[BI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iput-object p2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$bufferCopy:[B

    iput p3, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 108
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v2, v2, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$200(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;

    .line 109
    .local v1, l:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v2, v2, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    iget-object v3, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$bufferCopy:[B

    iget v4, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$length:I

    invoke-interface {v1, v2, v3, v4}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;->onData(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;[BI)V

    goto :goto_0

    .line 111
    .end local v1           #l:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
    :cond_0
    return-void
.end method
