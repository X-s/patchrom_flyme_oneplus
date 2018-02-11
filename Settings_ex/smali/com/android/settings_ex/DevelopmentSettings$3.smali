.class Lcom/android/settings_ex/DevelopmentSettings$3;
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
    .param p1, "this$0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2047
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 2046
    :cond_0
    return-void
.end method
