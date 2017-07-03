.class Lcom/oneplus/gallery/editor/ColorFilterEditorMode$2;
.super Ljava/lang/Object;
.source "ColorFilterEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/ColorFilterEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/ColorFilterEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/ColorFilterEditorMode;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/gallery/editor/ColorFilterEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/ColorFilterEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/gallery/editor/ColorFilterEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/ColorFilterEditorMode;

    sget-object v1, Lcom/oneplus/gallery/editor/ColorFilterEditorMode$ColorFilterMode;->EXPOSURE:Lcom/oneplus/gallery/editor/ColorFilterEditorMode$ColorFilterMode;

    # invokes: Lcom/oneplus/gallery/editor/ColorFilterEditorMode;->changeColorFilterMode(Lcom/oneplus/gallery/editor/ColorFilterEditorMode$ColorFilterMode;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/ColorFilterEditorMode;->access$300(Lcom/oneplus/gallery/editor/ColorFilterEditorMode;Lcom/oneplus/gallery/editor/ColorFilterEditorMode$ColorFilterMode;)V

    .line 223
    return-void
.end method
