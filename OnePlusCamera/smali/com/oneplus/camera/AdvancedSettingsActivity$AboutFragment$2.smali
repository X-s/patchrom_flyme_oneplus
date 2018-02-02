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
    .line 392
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    invoke-virtual {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap7(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    .line 395
    return-void
.end method
