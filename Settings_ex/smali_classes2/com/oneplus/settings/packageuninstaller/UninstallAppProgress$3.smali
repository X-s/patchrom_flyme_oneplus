.class Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$3;
.super Ljava/lang/Object;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$3;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$3;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->startActivity(Landroid/content/Intent;)V

    .line 367
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$3;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-virtual {v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->finish()V

    .line 363
    return-void
.end method
