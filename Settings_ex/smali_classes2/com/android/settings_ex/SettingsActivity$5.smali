.class Lcom/android/settings_ex/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$5;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$5;->this$0:Lcom/android/settings_ex/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity$5;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 895
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$5;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 893
    return-void
.end method
