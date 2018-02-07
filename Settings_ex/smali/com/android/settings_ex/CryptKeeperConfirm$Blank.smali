.class public Lcom/android/settings_ex/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f04004d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 59
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->finish()V

    .line 63
    :cond_0
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 64
    .local v0, "sbm":Landroid/app/StatusBarManager;
    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 76
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/CryptKeeperConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/settings_ex/CryptKeeperConfirm$Blank;)V

    .line 93
    const-wide/16 v4, 0x2bc

    .line 76
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method
