.class Lcom/android/settings_ex/DevelopmentSettings$3;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V
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
    .line 1638
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1646
    :cond_0
    return-void
.end method
