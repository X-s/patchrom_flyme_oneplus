.class Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field previewWidth:I

.field previewheight:I

.field result:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 88
    return-void
.end method

.method clearImage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 83
    iput-object v0, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 85
    return-void
.end method
