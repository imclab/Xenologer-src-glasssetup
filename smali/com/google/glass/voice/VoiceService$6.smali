.class Lcom/google/glass/voice/VoiceService$6;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;

.field final synthetic val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$6;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceService$6;->val$task:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceService$6;->val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$6;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, t:Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Uncaught VoiceService exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$6;->val$exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
