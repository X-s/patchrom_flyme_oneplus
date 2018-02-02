.class Lcom/oneplus/camera/AdvancedSettingsActivity$4;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$4;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

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
    .line 1745
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$4;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$4;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get1(Lcom/oneplus/camera/AdvancedSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-static {v1, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap6(Lcom/oneplus/camera/AdvancedSettingsActivity;Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 1743
    return-void
.end method
