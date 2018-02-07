.class Lcom/android/settings_ex/applications/AppStorageSettings$3;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppStorageSettings;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/AppStorageSettings;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings_ex/applications/AppStorageSettings;->-get0(Lcom/android/settings_ex/applications/AppStorageSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->setIntentAndFinish(ZZ)V

    .line 588
    return-void
.end method
