.class Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    invoke-virtual {v2}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 235
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    if-nez v1, :cond_0

    .line 237
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCreateView() - Cannot find fragment manager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 240
    :cond_0
    const-string/jumbo v2, "Agreement"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 241
    .local v0, "agreementFragment":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AgreementFragment;

    .end local v0    # "agreementFragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AgreementFragment;-><init>()V

    .line 244
    .restart local v0    # "agreementFragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "Agreement"

    const v4, 0x7f09001a

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 245
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCreateView() - Create agreement fragment: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_1
    return-void
.end method
