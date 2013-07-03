.class public Lcom/google/glass/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field public static final ACTION_GO_TO_SETTINGS:Ljava/lang/String; = "com.google.glass.action.ACTION_GO_TO_SETTINGS"

.field public static final ACTION_GUEST_MODE:Ljava/lang/String; = "com.google.glass.ACTION_GUEST_MODE"

.field public static final BLUETOOTH_ID:I = 0x1

.field public static final DEFAULT_ID:I = 0x0

.field public static final DEVICE_INFO_ID:I = 0x2

.field public static final EXTRA_GUEST_MODE_ENABLED:Ljava/lang/String; = "com.google.glass.EXTRA_GUEST_MODE_ENABLED"

.field public static final EXTRA_GUEST_MODE_TOGGLE_TIME:Ljava/lang/String; = "com.google.glass.EXTRA_GUEST_MODE_TOGGLE_TIME"

.field public static final EXTRA_SETTINGS_ID:Ljava/lang/String; = "settings_id"

.field public static final GPS_DEBUG_ID:I = 0x6

.field public static final GUEST_MODE_ID:I = 0x7

.field public static final HEAD_WAKE_ID:I = 0x3

.field public static final ON_HEAD_DETECTION_ID:I = 0x5

.field public static final VOLUME_ID:I = 0x8

.field public static final WIFI_ID:I = 0x0

.field public static final WINK_TO_PHOTO_ID:I = 0x4


# instance fields
.field private context:Landroid/content/Context;

.field private final idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v1, "settings"

    invoke-direct {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    .line 65
    iput-object p1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public static final getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    new-instance v0, Lcom/google/glass/util/SettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public createSettingsItemId(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuestModeToggleTime()J
    .locals 7

    .prologue
    const-wide/16 v1, 0x0

    .line 93
    iget-object v3, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.glass.ACTION_GUEST_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 96
    const-string v3, "com.google.glass.EXTRA_GUEST_MODE_TOGGLE_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 98
    :cond_0
    return-wide v1
.end method

.method public getSettingsItemPosition(Ljava/lang/String;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->getPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public goToSettings()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    .line 71
    return-void
.end method

.method public goToSettings(I)V
    .locals 2
    .parameter "settingsId"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ACTION_GO_TO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const-string v1, "settings_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public goToSettingsCover()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 128
    .local v0, settingsCoverId:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 129
    return-void
.end method

.method public indexFromIntent(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return v0

    :cond_0
    const-string v1, "settings_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isGuestModeEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.google.glass.ACTION_GUEST_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 86
    const-string v2, "com.google.glass.EXTRA_GUEST_MODE_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 88
    :cond_0
    return v1
.end method

.method public isSettingsItemId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
