.class Lcom/oneplus/gallery/editor/BaseEditorMode$4;
.super Ljava/lang/Object;
.source "BaseEditorMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/BaseEditorMode;->setUIVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

    # getter for: Lcom/oneplus/gallery/editor/BaseEditorMode;->m_BaseView:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->access$100(Lcom/oneplus/gallery/editor/BaseEditorMode;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    return-void
.end method
