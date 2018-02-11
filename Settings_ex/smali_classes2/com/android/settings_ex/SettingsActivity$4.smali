.class Lcom/android/settings_ex/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->updateSearchIndex()V
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
    .line 697
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->-get2(Lcom/android/settings_ex/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/SettingsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SettingsActivity$4$1;-><init>(Lcom/android/settings_ex/SettingsActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method
