.class public Lcom/oneplus/gallery2/MediaDetailsDialog;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/MediaDetailsDialog$7;
    }
.end annotation


# static fields
.field private static final MAX_MEDIA_DETAILS_WAITING_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MediaDetailsDialog"


# instance fields
.field private m_Activity:Lcom/oneplus/base/BaseActivity;

.field private m_Dialog:Landroid/app/Dialog;

.field private final m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

.field private m_Duration:Ljava/lang/Long;

.field private final m_ItemStringFormat:Ljava/lang/String;

.field private final m_Media:Lcom/oneplus/gallery2/media/Media;

.field private m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

.field private m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

.field private m_MediaSize:Landroid/util/Size;

.field private m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final m_TimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/BaseActivity;Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/base/BaseActivity;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$1;-><init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    .line 87
    new-instance v0, Lcom/oneplus/gallery2/MediaDetailsDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$2;-><init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_TimeoutRunnable:Ljava/lang/Runnable;

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    .line 109
    iput-object p2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 110
    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Lcom/oneplus/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_ItemStringFormat:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/gallery2/GalleryDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/base/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery2/MediaDetailsDialog;Lcom/oneplus/base/BaseActivity;)Lcom/oneplus/base/BaseActivity;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Lcom/oneplus/base/BaseActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/gallery2/MediaDetailsDialog;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/MediaDetailsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->onMediaInfoTimeout()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/MediaDetailsDialog;Lcom/oneplus/gallery2/media/MediaDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaDetails;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery2/media/MediaDetails;)V

    return-void
.end method

.method static synthetic access$702(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/util/Size;)Landroid/util/Size;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/util/Size;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/MediaDetailsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->checkMediaInfoReadyState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/oneplus/gallery2/MediaDetailsDialog;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaDetailsDialog;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    return-object p1
.end method

.method private checkMediaInfoReadyState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    instance-of v1, v1, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->onMediaInfoReady()V

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createDateTimeItem(Landroid/view/ViewGroup;IJ)V
    .locals 3
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "time"    # J

    .prologue
    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 130
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 131
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method private createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)V
    .locals 5
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # D
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method private createEmptyMediaDetails()Lcom/oneplus/gallery2/media/MediaDetails;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    sget-object v0, Lcom/oneplus/gallery2/MediaDetailsDialog$7;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    const-string v0, "MediaDetailsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEmptyMediaDetails() - Unknown media type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;

    invoke-direct {v0, v3}, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0

    .line 148
    :pswitch_0
    new-instance v0, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;

    invoke-direct {v0, v3}, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 150
    :pswitch_1
    new-instance v0, Lcom/oneplus/gallery2/media/SimpleVideoMediaDetails;

    invoke-direct {v0, v3}, Lcom/oneplus/gallery2/media/SimpleVideoMediaDetails;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createIntItem(Landroid/view/ViewGroup;II)V
    .locals 1
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # I

    .prologue
    .line 161
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 162
    return-void
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-static {v1, v2, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_ItemStringFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    invoke-virtual {v4, p2}, Lcom/oneplus/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method private onMediaDetailsRetrieved(Lcom/oneplus/gallery2/media/MediaDetails;)V
    .locals 0
    .param p1, "details"    # Lcom/oneplus/gallery2/media/MediaDetails;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createEmptyMediaDetails()Lcom/oneplus/gallery2/media/MediaDetails;

    move-result-object p1

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    .line 208
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->checkMediaInfoReadyState()Z

    .line 209
    return-void
.end method

.method private onMediaInfoReady()V
    .locals 5

    .prologue
    .line 216
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_TimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 219
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 226
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 228
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    const v3, 0x7f06002f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, "itemContainer":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 234
    sget-object v2, Lcom/oneplus/gallery2/MediaDetailsDialog$7;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 243
    const-string v2, "MediaDetailsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaDetailsRetrieved() - Unknown media type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 237
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->showPhotoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery2/media/MediaDetails;)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->showVideoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery2/media/MediaDetails;)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMediaInfoTimeout()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string v1, "MediaDetailsDialog"

    const-string v2, "onMediaInfoTimeout()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 264
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onPrepareDialog(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    new-instance v3, Lcom/oneplus/gallery2/MediaDetailsDialog$3;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$3;-><init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/Media;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    .line 284
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    if-nez v2, :cond_0

    .line 286
    const-string v2, "MediaDetailsDialog"

    const-string v3, "onPrepareDialog() - Fail to get media details"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createEmptyMediaDetails()Lcom/oneplus/gallery2/media/MediaDetails;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    if-nez v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    .line 295
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    if-nez v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    new-instance v3, Lcom/oneplus/gallery2/MediaDetailsDialog$4;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$4;-><init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    const-string v2, "MediaDetailsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialog() - Fail to start getting media size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v5, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    instance-of v2, v2, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    check-cast v2, Lcom/oneplus/gallery2/media/VideoMedia;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/VideoMedia;->peekDuration()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    .line 318
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    check-cast v2, Lcom/oneplus/gallery2/media/VideoMedia;

    new-instance v3, Lcom/oneplus/gallery2/MediaDetailsDialog$5;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$5;-><init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/VideoMedia;->getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 330
    const-string v2, "MediaDetailsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialog() - Fail to start getting duration of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/GalleryDialogFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 358
    .local v1, "isDarkMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_5

    const v2, 0x7f0a000d

    :goto_0
    invoke-direct {v0, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 359
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090059

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 360
    const v2, 0x7f030008

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 361
    const v2, 0x104000a

    new-instance v3, Lcom/oneplus/gallery2/MediaDetailsDialog$6;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$6;-><init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    .line 376
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->checkMediaInfoReadyState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 377
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_TimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 378
    :cond_4
    return-void

    .line 358
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const v2, 0x7f0a000b

    goto :goto_0
.end method

.method private showPhotoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery2/media/MediaDetails;)V
    .locals 26
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "details"    # Lcom/oneplus/gallery2/media/MediaDetails;

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "filePath":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 412
    const v5, 0x7f09005a

    invoke-static {v12}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v22

    .line 416
    .local v22, "time":J
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-lez v5, :cond_1

    .line 417
    const v5, 0x7f09005c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)V

    .line 420
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v14

    .line 421
    .local v14, "location":Landroid/location/Location;
    if-eqz v14, :cond_2

    .line 422
    const v5, 0x7f09005d

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.6f, %.6f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 431
    :cond_2
    const v5, 0x7f090060

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%dx%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v20

    .line 439
    .local v20, "size":J
    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-lez v5, :cond_3

    .line 440
    const v5, 0x7f090062

    invoke-static/range {v20 .. v21}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 443
    :cond_3
    if-eqz p2, :cond_d

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v5

    .line 444
    .local v19, "strValue":Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_4

    .line 445
    const v5, 0x7f090063

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 448
    :cond_4
    if-eqz p2, :cond_e

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v5

    .line 449
    :goto_1
    if-eqz v19, :cond_5

    .line 450
    const v5, 0x7f090064

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 453
    :cond_5
    if-eqz p2, :cond_f

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v4, v5

    .line 454
    .local v4, "boolValue":Ljava/lang/Boolean;
    :goto_2
    if-eqz v4, :cond_6

    .line 455
    const v6, 0x7f090067

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    const v7, 0x7f090068

    invoke-virtual {v5, v7}, Lcom/oneplus/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 458
    :cond_6
    if-eqz p2, :cond_11

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-object v11, v5

    .line 459
    .local v11, "doubleValue":Ljava/lang/Double;
    :goto_4
    if-eqz v11, :cond_7

    .line 460
    const v7, 0x7f09006a

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "%.2f mm"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)V

    .line 463
    :cond_7
    if-eqz p2, :cond_12

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v13, v5

    .line 464
    .local v13, "intValue":Ljava/lang/Integer;
    :goto_5
    if-eqz v13, :cond_8

    .line 465
    const v6, 0x7f09006b

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    const v7, 0x7f090065

    invoke-virtual {v5, v7}, Lcom/oneplus/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 468
    :cond_8
    if-eqz p2, :cond_14

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-object v11, v5

    .line 469
    :goto_7
    if-eqz v11, :cond_9

    .line 470
    const v7, 0x7f09006c

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "f/%.1f"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)V

    .line 473
    :cond_9
    if-eqz p2, :cond_15

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    move-object v15, v5

    .line 474
    .local v15, "rationalValue":Landroid/util/Rational;
    :goto_8
    if-eqz v15, :cond_a

    .line 476
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 477
    const v5, 0x7f09006d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 496
    .end local v15    # "rationalValue":Landroid/util/Rational;
    :cond_a
    :goto_9
    if-eqz p2, :cond_18

    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v13, v5

    .line 497
    :goto_a
    if-eqz v13, :cond_b

    .line 498
    const v5, 0x7f09006e

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createIntItem(Landroid/view/ViewGroup;II)V

    .line 501
    :cond_b
    if-eqz v12, :cond_c

    .line 502
    const v5, 0x7f090070

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 503
    :cond_c
    return-void

    .line 443
    .end local v4    # "boolValue":Ljava/lang/Boolean;
    .end local v11    # "doubleValue":Ljava/lang/Double;
    .end local v13    # "intValue":Ljava/lang/Integer;
    .end local v19    # "strValue":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 448
    .restart local v19    # "strValue":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 453
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 455
    .restart local v4    # "boolValue":Ljava/lang/Boolean;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    const v7, 0x7f090069

    invoke-virtual {v5, v7}, Lcom/oneplus/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 458
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 463
    .restart local v11    # "doubleValue":Ljava/lang/Double;
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 465
    .restart local v13    # "intValue":Ljava/lang/Integer;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    const v7, 0x7f090066

    invoke-virtual {v5, v7}, Lcom/oneplus/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 468
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 473
    :cond_15
    const/4 v15, 0x0

    goto :goto_8

    .line 480
    .restart local v15    # "rationalValue":Landroid/util/Rational;
    :cond_16
    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    if-eqz v5, :cond_a

    .line 482
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    div-int v18, v5, v6

    .line 483
    .local v18, "seconds":I
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    rem-int v17, v5, v6

    .line 484
    .local v17, "restNumerator":I
    if-eqz v17, :cond_17

    .line 486
    new-instance v16, Landroid/util/Rational;

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/util/Rational;-><init>(II)V

    .line 487
    .end local v15    # "rationalValue":Landroid/util/Rational;
    .local v16, "rationalValue":Landroid/util/Rational;
    const v5, 0x7f09006d

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d\"%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v16, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    move-object/from16 v15, v16

    .local v15, "rationalValue":Ljava/lang/Object;
    goto/16 :goto_9

    .line 490
    .end local v16    # "rationalValue":Landroid/util/Rational;
    .local v15, "rationalValue":Landroid/util/Rational;
    :cond_17
    const v5, 0x7f09006d

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d\""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 496
    .end local v15    # "rationalValue":Landroid/util/Rational;
    .end local v17    # "restNumerator":I
    .end local v18    # "seconds":I
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_a
.end method

.method private showVideoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery2/media/MediaDetails;)V
    .locals 28
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "details"    # Lcom/oneplus/gallery2/media/MediaDetails;

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/oneplus/gallery2/media/VideoMedia;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v21, v0

    check-cast v21, Lcom/oneplus/gallery2/media/VideoMedia;

    move-object/from16 v20, v21

    .line 511
    .local v20, "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 515
    const v21, 0x7f09005a

    invoke-static {v8}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 518
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v18

    .line 519
    .local v18, "time":J
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_1

    .line 520
    const v21, 0x7f09005c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)V

    .line 523
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery2/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 524
    .local v9, "location":Landroid/location/Location;
    if-eqz v9, :cond_2

    .line 525
    const v21, 0x7f09005d

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "%.6f, %.6f"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 534
    :cond_2
    const v21, 0x7f090060

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "%dx%d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/Size;->getWidth()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/Size;->getHeight()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 537
    if-eqz v20, :cond_3

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 540
    .local v6, "duration":J
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_3

    .line 542
    const-wide/16 v22, 0x1f4

    add-long v6, v6, v22

    .line 543
    const-wide/32 v22, 0x36ee80

    div-long v10, v6, v22

    .line 544
    .local v10, "hours":J
    const-wide/32 v22, 0x36ee80

    rem-long v6, v6, v22

    .line 545
    const-wide/32 v22, 0xea60

    div-long v12, v6, v22

    .line 546
    .local v12, "minutes":J
    const-wide/32 v22, 0xea60

    rem-long v6, v6, v22

    .line 547
    const-wide/16 v22, 0x3e8

    div-long v14, v6, v22

    .line 548
    .local v14, "seconds":J
    const-wide/16 v22, 0x1

    cmp-long v21, v10, v22

    if-gez v21, :cond_7

    .line 549
    const v21, 0x7f09006f

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "%02d:%02d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 556
    .end local v6    # "duration":J
    .end local v10    # "hours":J
    .end local v12    # "minutes":J
    .end local v14    # "seconds":J
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v16

    .line 557
    .local v16, "size":J
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-lez v21, :cond_4

    .line 558
    const v21, 0x7f090062

    invoke-static/range {v16 .. v17}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 561
    :cond_4
    if-eqz v8, :cond_5

    .line 562
    const v21, 0x7f090070

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 563
    :cond_5
    return-void

    .line 510
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "location":Landroid/location/Location;
    .end local v16    # "size":J
    .end local v18    # "time":J
    .end local v20    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 551
    .restart local v6    # "duration":J
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v9    # "location":Landroid/location/Location;
    .restart local v10    # "hours":J
    .restart local v12    # "minutes":J
    .restart local v14    # "seconds":J
    .restart local v18    # "time":J
    .restart local v20    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_7
    const v21, 0x7f09006f

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "%02d:%02d:%02d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 186
    :cond_0
    return-void
.end method

.method public getMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/gallery2/MediaDetailsDialog;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 389
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;

    const-string v2, "MediaDetailsDialog.DialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
