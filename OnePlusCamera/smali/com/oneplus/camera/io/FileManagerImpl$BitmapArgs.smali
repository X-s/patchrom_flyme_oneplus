.class Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;
.super Ljava/lang/Object;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/io/FileManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapArgs"
.end annotation


# instance fields
.field private mHeight:I

.field private m_Path:Ljava/lang/String;

.field private m_Position:I

.field private m_Width:I

.field private m_callback:Lcom/oneplus/camera/io/FileManager$PhotoCallback;

.field final synthetic this$0:Lcom/oneplus/camera/io/FileManagerImpl;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->mHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Position:I

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Width:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)Lcom/oneplus/camera/io/FileManager$PhotoCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_callback:Lcom/oneplus/camera/io/FileManager$PhotoCallback;

    return-object v0
.end method

.method constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl;ILjava/lang/String;IILcom/oneplus/camera/io/FileManager$PhotoCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/io/FileManagerImpl;
    .param p2, "position"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "callback"    # Lcom/oneplus/camera/io/FileManager$PhotoCallback;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p2, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Position:I

    .line 349
    iput-object p3, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Path:Ljava/lang/String;

    .line 350
    iput p4, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Width:I

    .line 351
    iput p5, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->mHeight:I

    .line 352
    iput-object p6, p0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_callback:Lcom/oneplus/camera/io/FileManager$PhotoCallback;

    .line 347
    return-void
.end method
