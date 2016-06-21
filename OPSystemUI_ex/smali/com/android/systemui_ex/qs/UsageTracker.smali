.class public Lcom/android/systemui_ex/qs/UsageTracker;
.super Ljava/lang/Object;
.source "UsageTracker.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/Listenable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrefKey:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mResetAction:Ljava/lang/String;

.field private final mTimeToShowTile:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "timeoutResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "tile":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/systemui_ex/qs/UsageTracker$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/qs/UsageTracker$2;-><init>(Lcom/android/systemui_ex/qs/UsageTracker;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LastUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mPrefKey:Ljava/lang/String;

    .line 43
    const-wide/32 v0, 0x5265c00

    iget-object v2, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mTimeToShowTile:J

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.systemui.qs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".usage_reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mResetAction:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/qs/UsageTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/UsageTracker;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mResetAction:Ljava/lang/String;

    return-object v0
.end method

.method private getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isRecentlyUsed()Z
    .locals 6

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/UsageTracker;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mPrefKey:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 60
    .local v0, "lastUsed":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mTimeToShowTile:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/UsageTracker;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mPrefKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listen"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mRegistered:Z

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mResetAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mRegistered:Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mRegistered:Z

    goto :goto_0
.end method

.method public showResetConfirmation(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "onConfirmed"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "d":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui_ex/qs/UsageTracker;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0190

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 76
    const v1, 0x7f0c0191

    new-instance v2, Lcom/android/systemui_ex/qs/UsageTracker$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui_ex/qs/UsageTracker$1;-><init>(Lcom/android/systemui_ex/qs/UsageTracker;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->show()V

    .line 88
    return-void
.end method
