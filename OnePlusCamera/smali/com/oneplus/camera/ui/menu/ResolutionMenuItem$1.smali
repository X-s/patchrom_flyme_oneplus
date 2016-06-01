.class Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 46
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    # getter for: Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->access$000(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    # getter for: Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Settings:Lcom/oneplus/camera/Settings;
    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->access$200(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Lcom/oneplus/camera/Settings;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    # getter for: Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResoltuonSettingKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->access$100(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    # getter for: Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->access$000(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
