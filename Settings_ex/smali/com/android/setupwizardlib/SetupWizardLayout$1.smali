.class Lcom/android/setupwizardlib/SetupWizardLayout$1;
.super Ljava/lang/Object;
.source "SetupWizardLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/SetupWizardLayout;->setXFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/SetupWizardLayout;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/SetupWizardLayout;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardLayout$1;->this$0:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$1;->this$0:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardLayout$1;->this$0:Lcom/android/setupwizardlib/SetupWizardLayout;

    # getter for: Lcom/android/setupwizardlib/SetupWizardLayout;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-static {v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->access$000(Lcom/android/setupwizardlib/SetupWizardLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 457
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$1;->this$0:Lcom/android/setupwizardlib/SetupWizardLayout;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardLayout$1;->this$0:Lcom/android/setupwizardlib/SetupWizardLayout;

    # getter for: Lcom/android/setupwizardlib/SetupWizardLayout;->mXFraction:F
    invoke-static {v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->access$100(Lcom/android/setupwizardlib/SetupWizardLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setXFraction(F)V

    .line 458
    const/4 v0, 0x1

    return v0
.end method
