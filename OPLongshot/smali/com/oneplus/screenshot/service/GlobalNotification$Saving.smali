.class Lcom/oneplus/screenshot/service/GlobalNotification$Saving;
.super Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/service/GlobalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Saving"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/service/GlobalNotification;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected getBigContentViews()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030005

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 181
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->setBigIcon(Landroid/widget/RemoteViews;)V

    .line 182
    const v1, 0x7f0b001c

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    const v1, 0x7f0b001d

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 184
    const v1, 0x7f0b0020

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 185
    const v1, 0x7f0b0023

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 186
    return-object v0
.end method

.method protected getContentViews()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->setIcon(Landroid/widget/RemoteViews;)V

    .line 173
    const v1, 0x7f0b0012

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 174
    const v1, 0x7f0b0013

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Saving;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    return-object v0
.end method
