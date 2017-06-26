.class Lcom/android/settings_ex/DevelopmentSettings$7;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DevelopmentSettings;->confirmEnabledRequirePasswordToPowerOnMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$7;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1699
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$7;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$400(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1700
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$7;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$400(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings$7;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "require_password_to_decrypt"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1703
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1700
    goto :goto_0
.end method
