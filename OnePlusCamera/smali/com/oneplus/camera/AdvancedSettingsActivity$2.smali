.class Lcom/oneplus/camera/AdvancedSettingsActivity$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;->onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;
    .param p2, "val$fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    iput-object p2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isCancelled"    # Z

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->val$fragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "About"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1077
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 1079
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onAnimationCompleted() - Create abount fragment"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-static {v1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get3(Lcom/oneplus/camera/AdvancedSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;-><init>(Ljava/lang/String;)V

    .line 1081
    .restart local v0    # "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->val$fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "About"

    const v3, 0x7f09001a

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1074
    :cond_0
    return-void
.end method
