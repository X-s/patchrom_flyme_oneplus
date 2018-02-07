.class Lcom/android/settings_ex/DevelopmentSettings$4;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2050
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$4;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$4;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2054
    return-void

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$4;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->-wrap1(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2052
    return-void
.end method
