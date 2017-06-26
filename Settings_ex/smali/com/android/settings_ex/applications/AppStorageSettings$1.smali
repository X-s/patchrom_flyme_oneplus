.class Lcom/android/settings_ex/applications/AppStorageSettings$1;
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
    .line 426
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    # invokes: Lcom/android/settings_ex/applications/AppStorageSettings;->initiateClearUserData()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppStorageSettings;->access$000(Lcom/android/settings_ex/applications/AppStorageSettings;)V

    .line 430
    return-void
.end method
