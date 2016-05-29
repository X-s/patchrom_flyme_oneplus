.class Lcom/android/settings_ex/SettingsMainFragement$1;
.super Ljava/lang/Object;
.source "SettingsMainFragement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsMainFragement;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsMainFragement;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsMainFragement;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/SettingsMainFragement$1;->this$0:Lcom/android/settings_ex/SettingsMainFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/SettingsMainFragement$1;->this$0:Lcom/android/settings_ex/SettingsMainFragement;

    # getter for: Lcom/android/settings_ex/SettingsMainFragement;->mFrag:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsMainFragement;->access$000(Lcom/android/settings_ex/SettingsMainFragement;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/SettingsMainFragement$1;->this$0:Lcom/android/settings_ex/SettingsMainFragement;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsMainFragement$1;->this$0:Lcom/android/settings_ex/SettingsMainFragement;

    # getter for: Lcom/android/settings_ex/SettingsMainFragement;->mFrag:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings_ex/SettingsMainFragement;->access$000(Lcom/android/settings_ex/SettingsMainFragement;)Landroid/app/Fragment;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/SettingsMainFragement;->changeFragment(Landroid/app/Fragment;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/SettingsMainFragement;->access$100(Lcom/android/settings_ex/SettingsMainFragement;Landroid/app/Fragment;)V

    .line 77
    :cond_0
    return-void
.end method
