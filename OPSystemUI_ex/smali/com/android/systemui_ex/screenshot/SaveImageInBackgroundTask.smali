.class Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static mTickerAddSpace:Z


# instance fields
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


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 125
    .local v17, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 126
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "imageDate":Ljava/lang/String;
    const-string v19, "Screenshot_%s.png"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 129
    new-instance v19, Ljava/io/File;

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    const-string v21, "Screenshots"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 131
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 135
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 136
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 137
    .local v7, "iconSize":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v16, v0

    .line 138
    .local v16, "previewWidth":I
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 140
    .local v15, "previewHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v18, v0

    .line 141
    .local v18, "shortSide":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 142
    .local v14, "preview":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 145
    .local v6, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v19, 0x3e800000    # 0.25f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 146
    new-instance v19, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 147
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 150
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 151
    const v19, 0x40ffffff    # 7.9999995f

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 152
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v14, v7, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 157
    .local v5, "croppedIcon":Landroid/graphics/Bitmap;
    sget-boolean v19, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v19, :cond_1

    const/16 v19, 0x1

    :goto_1
    sput-boolean v19, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 158
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 159
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 162
    .local v12, "now":J
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x7f0c0053

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v19, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v19, :cond_2

    const-string v19, " "

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0c0054

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0c0055

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f02020a

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x1060059

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 171
    new-instance v19, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v19 .. v19}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 177
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x7f0c0054

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0c0055

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f02020a

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const-string v20, "progress"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x1060059

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 189
    .local v10, "n":Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 190
    check-cast p1, Landroid/app/Service;

    .end local p1    # "context":Landroid/content/Context;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v10}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 198
    return-void

    .line 140
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v6    # "desat":Landroid/graphics/ColorMatrix;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "n":Landroid/app/Notification;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "now":J
    .end local v14    # "preview":Landroid/graphics/Bitmap;
    .end local v18    # "shortSide":I
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v18, v0

    goto/16 :goto_0

    .line 157
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "croppedIcon":Landroid/graphics/Bitmap;
    .restart local v6    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "preview":Landroid/graphics/Bitmap;
    .restart local v18    # "shortSide":I
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 162
    .restart local v12    # "now":J
    :cond_2
    const-string v19, ""

    goto/16 :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;
    .locals 21
    .param p1, "params"    # [Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 202
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v16, 0x0

    .line 281
    :goto_0
    return-object v16

    .line 203
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 204
    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 205
    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 206
    const/16 v16, 0x0

    goto :goto_0

    .line 211
    :cond_1
    const/16 v16, -0x2

    invoke-static/range {v16 .. v16}, Landroid/os/Process;->setThreadPriority(I)V

    .line 213
    const/16 v16, 0x0

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 214
    .local v3, "context":Landroid/content/Context;
    const/16 v16, 0x0

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 215
    .local v7, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 219
    .local v9, "r":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 223
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    div-long v4, v16, v18

    .line 226
    .local v4, "dateSeconds":J
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v15, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 228
    .local v10, "resolver":Landroid/content/ContentResolver;
    const-string v16, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v16, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v16, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v16, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    const-string v16, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v16, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v16, "mime_type"

    const-string v17, "image/png"

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v16, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v16, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 239
    .local v14, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v16

    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, "subjectDate":Ljava/lang/String;
    const-string v16, "Screenshot (%s)"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "subject":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v16, "android.intent.action.SEND"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v11, "sharingIntent":Landroid/content/Intent;
    const-string v16, "image/png"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 244
    const-string v16, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 247
    .local v2, "chooserIntent":Landroid/content/Intent;
    const v16, 0x10008000

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v16, v0

    const v17, 0x7f0200c2

    const v18, 0x10405b8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/high16 v20, 0x10000000

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 255
    invoke-virtual {v10, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    .line 256
    .local v8, "out":Ljava/io/OutputStream;
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 257
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 258
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 261
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 262
    const-string v16, "_size"

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v14, v15, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    const/16 v16, 0x0

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 266
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 267
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v2    # "chooserIntent":Landroid/content/Intent;
    .end local v4    # "dateSeconds":J
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "sharingIntent":Landroid/content/Intent;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "subjectDate":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_1
    if-eqz v7, :cond_2

    .line 278
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_2
    const/16 v16, 0x0

    aget-object v16, p1, v16

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v6

    .line 271
    .local v6, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 272
    const/16 v16, 0x0

    aget-object v16, p1, v16

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->result:I

    .line 273
    const-string v16, "SaveImageInBackgroundTask"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "screenshop exception :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, [Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;)V
    .locals 13
    .param p1, "params"    # Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;

    .prologue
    const v12, 0x7f0c0057

    const v11, 0x7f0c0056

    const v10, 0x1060059

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 286
    iget-object v0, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 287
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 288
    invoke-virtual {p1}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 289
    invoke-virtual {p1}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 290
    if-eqz v0, :cond_0

    .line 291
    check-cast v0, Landroid/app/Service;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v8}, Landroid/app/Service;->stopForeground(Z)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    iget v6, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v6, :cond_2

    .line 298
    iget-object v6, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v6, v7}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 335
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 336
    if-eqz v0, :cond_0

    .line 337
    check-cast v0, Landroid/app/Service;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v8}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    .line 301
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v6, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 304
    .local v3, "r":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "launchIntent":Landroid/content/Intent;
    iget-object v6, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v7, "image/png"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 310
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v7, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 320
    iget-object v6, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v7, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 329
    iget-object v6, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 331
    iget-object v6, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 332
    .local v2, "n":Landroid/app/Notification;
    iget v6, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 333
    iget-object v6, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui_ex/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
