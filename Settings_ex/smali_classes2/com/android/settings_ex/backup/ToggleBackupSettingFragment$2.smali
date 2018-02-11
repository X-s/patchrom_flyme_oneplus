.class Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;
.super Ljava/lang/Object;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z
    .locals 2
    .param p1, "toggleSwitch"    # Lcom/android/settings_ex/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 122
    if-nez p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;

    invoke-static {v0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->-wrap1(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;)V

    .line 126
    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->-wrap0(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;

    iget-object v0, v0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 130
    return v1
.end method
