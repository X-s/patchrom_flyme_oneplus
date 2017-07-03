.class Lcom/oneplus/gallery2/BottomSheetView$3;
.super Ljava/lang/Object;
.source "BottomSheetView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BottomSheetView;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BottomSheetView;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BottomSheetView;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/oneplus/gallery2/BottomSheetView$3;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

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
    .line 343
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/BottomSheetView$3;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # invokes: Lcom/oneplus/gallery2/BottomSheetView;->onBottomSheetItemClicked(IJ)V
    invoke-static {v0, p3, p4, p5}, Lcom/oneplus/gallery2/BottomSheetView;->access$500(Lcom/oneplus/gallery2/BottomSheetView;IJ)V

    .line 344
    return-void
.end method
