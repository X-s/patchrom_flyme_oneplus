.class abstract Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;
.super Lcom/oneplus/base/Handle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SystemUiVisibilityHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final isVisible:Z

.field final synthetic this$0:Lcom/oneplus/gallery/Gallery;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/Gallery;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;->this$0:Lcom/oneplus/gallery/Gallery;

    .line 242
    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 243
    iput-boolean p3, p0, Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;->isVisible:Z

    .line 244
    iput p4, p0, Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;->flags:I

    .line 245
    return-void
.end method


# virtual methods
.method public final drop()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/oneplus/gallery/Gallery$SystemUiVisibilityHandle;->closeDirectly()V

    .line 251
    return-void
.end method
