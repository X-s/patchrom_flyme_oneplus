.class final Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
.super Lcom/oneplus/base/Handle;
.source "OnScreenHintImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HintHandle"
.end annotation


# instance fields
.field public final clickListener:Landroid/view/View$OnClickListener;

.field public content:Ljava/lang/Object;

.field public flags:I

.field public final isSecondaryHint:Z

.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;Ljava/lang/Object;Landroid/view/View$OnClickListener;ZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p2, "content"    # Ljava/lang/Object;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "isSecondaryHint"    # Z
    .param p5, "flags"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .line 94
    const-string/jumbo v0, "Hint"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 95
    iput-object p2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    .line 96
    iput-object p3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->clickListener:Landroid/view/View$OnClickListener;

    .line 97
    iput p5, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    .line 98
    iput-boolean p4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->isSecondaryHint:Z

    .line 92
    return-void
.end method


# virtual methods
.method public isDrawableContent()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    return v0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->isSecondaryHint:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap3(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V

    .line 107
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap4(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V

    goto :goto_0
.end method
