.class Lcom/oneplus/gallery2/BottomSheetView$4;
.super Ljava/lang/Object;
.source "BottomSheetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 350
    iput-object p1, p0, Lcom/oneplus/gallery2/BottomSheetView$4;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery2/BottomSheetView$4;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # invokes: Lcom/oneplus/gallery2/BottomSheetView;->onOutsideListViewClicked()V
    invoke-static {v0}, Lcom/oneplus/gallery2/BottomSheetView;->access$600(Lcom/oneplus/gallery2/BottomSheetView;)V

    .line 355
    return-void
.end method
