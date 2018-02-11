.class Lcom/android/settings_ex/deviceinfo/StorageWizardBase$2;
.super Ljava/lang/Object;
.source "StorageWizardBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageWizardBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageWizardBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardBase;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardBase$2;->this$0:Lcom/android/settings_ex/deviceinfo/StorageWizardBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardBase$2;->this$0:Lcom/android/settings_ex/deviceinfo/StorageWizardBase;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->onNavigateNext()V

    .line 91
    return-void
.end method
