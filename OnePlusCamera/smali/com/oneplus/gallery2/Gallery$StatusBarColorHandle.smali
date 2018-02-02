.class final Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;
.super Lcom/oneplus/base/Handle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarColorHandle"
.end annotation


# instance fields
.field public final color:I

.field final synthetic this$0:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/Gallery;I)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    const-string/jumbo v0, "StatusBarColor"

    .line 343
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 344
    iput p2, p0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;->color:I

    .line 345
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/Gallery;->access$9(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarColorHandle;)V

    .line 352
    return-void
.end method
