.class final Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;
.super Lcom/oneplus/base/Handle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarColorHandle"
.end annotation


# instance fields
.field public final color:I

.field final synthetic this$0:Lcom/oneplus/gallery/Gallery;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/Gallery;I)V
    .locals 1

    .prologue
    .line 315
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;->this$0:Lcom/oneplus/gallery/Gallery;

    const-string/jumbo v0, "StatusBarColor"

    .line 316
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 317
    iput p2, p0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;->color:I

    .line 318
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;->this$0:Lcom/oneplus/gallery/Gallery;

    invoke-static {v0, p0}, Lcom/oneplus/gallery/Gallery;->access$8(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/gallery/Gallery$StatusBarColorHandle;)V

    .line 325
    return-void
.end method
