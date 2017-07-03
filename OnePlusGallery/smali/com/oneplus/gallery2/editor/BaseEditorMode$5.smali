.class Lcom/oneplus/gallery2/editor/BaseEditorMode$5;
.super Ljava/lang/Object;
.source "BaseEditorMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/BaseEditorMode;->setUIVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/BaseEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/BaseEditorMode;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/BaseEditorMode$5;->this$0:Lcom/oneplus/gallery2/editor/BaseEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/BaseEditorMode$5;->this$0:Lcom/oneplus/gallery2/editor/BaseEditorMode;

    # getter for: Lcom/oneplus/gallery2/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/BaseEditorMode;->access$200(Lcom/oneplus/gallery2/editor/BaseEditorMode;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    return-void
.end method
