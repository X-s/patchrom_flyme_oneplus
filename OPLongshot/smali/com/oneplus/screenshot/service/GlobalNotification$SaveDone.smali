.class Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;
.super Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/service/GlobalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveDone"
.end annotation


# instance fields
.field private mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

.field final synthetic this$0:Lcom/oneplus/screenshot/service/GlobalNotification;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .locals 5
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "imageInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .prologue
    const/high16 v4, 0x10000000

    .line 194
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 196
    iput-object p3, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 201
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 202
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 203
    return-void
.end method

.method private createExtras(Lcom/oneplus/screenshot/util/ImageInfo;)Landroid/os/Bundle;
    .locals 3
    .param p1, "info"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "uri"

    invoke-virtual {p1}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string v1, "path"

    invoke-virtual {p1}, Lcom/oneplus/screenshot/util/ImageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method


# virtual methods
.method protected getBigContentViews()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030004

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 217
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->setBigIcon(Landroid/widget/RemoteViews;)V

    .line 218
    const v1, 0x7f0b001c

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    const v1, 0x7f0b001d

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 220
    const v1, 0x7f0b0020

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    const v1, 0x7f0b0023

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    return-object v0
.end method

.method protected getContentViews()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 208
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->setIcon(Landroid/widget/RemoteViews;)V

    .line 209
    const v1, 0x7f0b0012

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    const v1, 0x7f0b0013

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 211
    return-object v0
.end method

.method protected onBuild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "content"    # Landroid/widget/RemoteViews;
    .param p2, "bigContent"    # Landroid/widget/RemoteViews;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x0

    .line 227
    const/4 v2, 0x0

    .line 229
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "image/png"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 232
    .local v3, "sharingIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, "chooserIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 235
    const v4, 0x7f0b0014

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 236
    const v4, 0x7f0b001e

    invoke-virtual {p2, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 238
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oneplus.screenshot.GlobalService.delete"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/oneplus/screenshot/service/GlobalService;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0, v5}, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->createExtras(Lcom/oneplus/screenshot/util/ImageInfo;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveDone;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 242
    const v4, 0x7f0b0016

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 243
    const v4, 0x7f0b0021

    invoke-virtual {p2, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 244
    return-void
.end method
