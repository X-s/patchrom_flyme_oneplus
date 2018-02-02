.class Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment$2;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;->-get0(Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-static {v1, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;->-wrap1(Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 254
    return-void
.end method
