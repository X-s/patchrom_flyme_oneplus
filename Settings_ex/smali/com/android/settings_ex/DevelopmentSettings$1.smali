.class Lcom/android/settings_ex/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1354
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1359
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$000(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1360
    return-void
.end method
