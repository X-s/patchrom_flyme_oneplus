.class Lcom/oneplus/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/oneplus/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/oneplus/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "Longshot.SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field private deleteIntent:Landroid/app/PendingIntent;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mScreenshotDir:Ljava/io/File;

.field private uri:Landroid/net/Uri;

.field private viewIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    .line 131
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    .line 132
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 146
    .local v18, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 147
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyyMMdd-HHmmss"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "imageDate":Ljava/lang/String;
    const-string v20, "Screenshot_%s.png"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 150
    new-instance v20, Ljava/io/File;

    sget-object v21, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    const-string v22, "Screenshots"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 152
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 156
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 157
    move-object/from16 v0, p2

    iget v7, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 158
    .local v7, "iconSize":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v17, v0

    .line 159
    .local v17, "previewWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    move/from16 v16, v0

    .line 161
    .local v16, "previewHeight":I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 162
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v14, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 164
    .local v5, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v20, 0x3e800000    # 0.25f

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 165
    new-instance v20, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 166
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    .local v9, "matrix":Landroid/graphics/Matrix;
    const v11, 0x40ffffff    # 7.9999995f

    .line 169
    .local v11, "overlayColor":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 170
    .local v15, "picture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 171
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v9, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 173
    invoke-virtual {v4, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 174
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v19, v20, v21

    .line 178
    .local v19, "scale":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 179
    .local v6, "icon":Landroid/graphics/Bitmap;
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 180
    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v19

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    int-to-float v0, v7

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 182
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v9, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 184
    invoke-virtual {v4, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 185
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    sget-boolean v20, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v20, :cond_0

    const/16 v20, 0x1

    :goto_0
    sput-boolean v20, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 188
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 189
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 192
    .local v12, "now":J
    new-instance v21, Landroid/app/Notification$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f0c0012

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v20, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v20, :cond_1

    const-string v20, " "

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f0c0013

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f0c0014

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f020030

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x1060059

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 203
    new-instance v20, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v20 .. v20}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 209
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f0c0013

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f0c0014

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f020030

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string v21, "progress"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x1060059

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 223
    .local v10, "n":Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    check-cast v20, Landroid/graphics/Bitmap;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 232
    return-void

    .line 187
    .end local v10    # "n":Landroid/app/Notification;
    .end local v12    # "now":J
    :cond_0
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 192
    .restart local v12    # "now":J
    :cond_1
    const-string v20, ""

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/oneplus/screenshot/SaveImageInBackgroundData;)Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    .locals 25
    .param p1, "params"    # [Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 236
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v20, 0x0

    .line 332
    :goto_0
    return-object v20

    .line 237
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 238
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 239
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 240
    const/16 v20, 0x0

    goto :goto_0

    .line 245
    :cond_1
    const/16 v20, -0x2

    invoke-static/range {v20 .. v20}, Landroid/os/Process;->setThreadPriority(I)V

    .line 247
    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 248
    .local v6, "context":Landroid/content/Context;
    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 249
    .local v11, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 253
    .local v13, "r":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 257
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    div-long v8, v20, v22

    .line 260
    .local v8, "dateSeconds":J
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 261
    .local v12, "out":Ljava/io/OutputStream;
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 262
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 263
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 266
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v19, "values":Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 268
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string v20, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v20, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v20, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    const-string v20, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v20, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v20, "mime_type"

    const-string v21, "image/png"

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v20, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v20, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v20, "_size"

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    sget-object v20, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 281
    .local v18, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v20

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 282
    .local v17, "subjectDate":Ljava/lang/String;
    const-string v20, "Screenshot (%s)"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 283
    .local v16, "subject":Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v15, "sharingIntent":Landroid/content/Intent;
    const-string v20, "image/png"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    const-string v20, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-class v22, Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v22, "android:cancel_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v21

    const/high16 v22, 0x50000000

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 293
    .local v4, "callback":Landroid/app/PendingIntent;
    const/16 v20, 0x0

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v5

    .line 295
    .local v5, "chooserIntent":Landroid/content/Intent;
    const v20, 0x10008000

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    const v21, 0x7f020021

    const v22, 0x1040463

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/high16 v24, 0x10000000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    invoke-virtual/range {v20 .. v23}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 303
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-class v22, Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v22, "android:cancel_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android:screenshot_uri_id"

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const/high16 v22, 0x50000000

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 308
    .local v7, "deleteAction":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    const v21, 0x7f020020

    const v22, 0x1040351

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 311
    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 312
    const/16 v20, 0x0

    aget-object v20, p1, v20

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 313
    const/16 v20, 0x0

    aget-object v20, p1, v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->result:I

    .line 315
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    .line 316
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    .line 317
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    .line 318
    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v4    # "callback":Landroid/app/PendingIntent;
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v7    # "deleteAction":Landroid/app/PendingIntent;
    .end local v8    # "dateSeconds":J
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "sharingIntent":Landroid/content/Intent;
    .end local v16    # "subject":Ljava/lang/String;
    .end local v17    # "subjectDate":Ljava/lang/String;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :goto_1
    const/16 v20, 0x0

    aget-object v20, p1, v20

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v10

    .line 323
    .local v10, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 324
    const/16 v20, 0x0

    aget-object v20, p1, v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->result:I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p1, [Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/oneplus/screenshot/SaveImageInBackgroundData;)Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected onPostExecute(Lcom/oneplus/screenshot/SaveImageInBackgroundData;)V
    .locals 12
    .param p1, "params"    # Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    .prologue
    const v11, 0x7f0c0016

    const v10, 0x7f0c0015

    const v9, 0x1060059

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 342
    invoke-virtual {p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 394
    :goto_0
    return-void

    .line 346
    :cond_0
    iget v5, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v5, :cond_1

    .line 348
    iget-object v5, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v5, v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 392
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v5, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 354
    .local v4, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v5, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v6, "image/png"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 358
    const-string v5, "load_media_set"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 363
    .local v2, "now":J
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 373
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 382
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 384
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 385
    .local v1, "n":Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, -0x21

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 386
    iget-object v5, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v5, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/oneplus/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
