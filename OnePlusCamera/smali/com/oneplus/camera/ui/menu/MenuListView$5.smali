.class Lcom/oneplus/camera/ui/menu/MenuListView$5;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/MenuListView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/MenuListView$5;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$5;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    # invokes: Lcom/oneplus/camera/ui/menu/MenuListView;->onItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    invoke-static/range {v0 .. v5}, Lcom/oneplus/camera/ui/menu/MenuListView;->access$200(Lcom/oneplus/camera/ui/menu/MenuListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 79
    return-void
.end method
