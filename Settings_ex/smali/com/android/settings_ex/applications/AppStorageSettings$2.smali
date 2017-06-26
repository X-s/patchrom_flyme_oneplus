.class Lcom/android/settings_ex/applications/AppStorageSettings$2;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppStorageSettings;->createDialog(II)Lcom/oneplus/app/OPAlertDialog;
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

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$2;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

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

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$2;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    # getter for: Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Lcom/oneplus/widget/button/OPButton;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppStorageSettings;->access$100(Lcom/android/settings_ex/applications/AppStorageSettings;)Lcom/oneplus/widget/button/OPButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPButton;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$2;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->setIntentAndFinish(ZZ)V

    .line 441
    return-void
.end method
