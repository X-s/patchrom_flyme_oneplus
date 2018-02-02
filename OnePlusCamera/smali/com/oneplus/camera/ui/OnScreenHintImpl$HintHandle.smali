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

.field public final flags:I

.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;Ljava/lang/Object;Landroid/view/View$OnClickListener;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p2, "content"    # Ljava/lang/Object;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "flags"    # I

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .line 85
    const-string/jumbo v0, "Hint"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    .line 87
    iput-object p3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->clickListener:Landroid/view/View$OnClickListener;

    .line 88
    iput p4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    .line 83
    return-void
.end method


# virtual methods
.method public isDrawableContent()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    return v0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap3(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V

    .line 97
    return-void
.end method
