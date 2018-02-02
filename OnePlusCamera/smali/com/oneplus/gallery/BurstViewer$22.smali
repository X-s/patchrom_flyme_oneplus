.class Lcom/oneplus/gallery/BurstViewer$22;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$22;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$22;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0}, Lcom/oneplus/gallery/BurstViewer;->-wrap4(Lcom/oneplus/gallery/BurstViewer;)V

    .line 1710
    return-void
.end method
