.class Lcom/google/glass/util/WifiHelper$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;

.field final synthetic val$callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$2;->this$0:Lcom/google/glass/util/WifiHelper;

    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$2;->val$callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wifiScanReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$2;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi scan completed, scan results received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/glass/util/WifiHelper$2;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 175
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$2;->val$callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$2;->this$0:Lcom/google/glass/util/WifiHelper;

    #getter for: Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->access$000(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_0

    .line 178
    sget-object v1, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$2;->val$callback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-interface {v1, v0}, Lcom/google/glass/util/WifiHelper$WifiScanCallback;->onScanResultsAvailable(Ljava/util/List;)V

    .line 182
    .end local v0           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-void
.end method
