.class Lcom/oneplus/gallery/BottomSheetView$4;
.super Ljava/lang/Object;
.source "BottomSheetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BottomSheetView;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BottomSheetView;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BottomSheetView;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/oneplus/gallery/BottomSheetView$4;->this$0:Lcom/oneplus/gallery/BottomSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView$4;->this$0:Lcom/oneplus/gallery/BottomSheetView;

    # invokes: Lcom/oneplus/gallery/BottomSheetView;->onOutsideListViewClicked()V
    invoke-static {v0}, Lcom/oneplus/gallery/BottomSheetView;->access$600(Lcom/oneplus/gallery/BottomSheetView;)V

    .line 354
    return-void
.end method
