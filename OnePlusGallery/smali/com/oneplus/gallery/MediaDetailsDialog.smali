.class public Lcom/oneplus/gallery/MediaDetailsDialog;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/MediaDetailsDialog$4;
    }
.end annotation


# static fields
.field private static final MAX_MEDIA_DETAILS_WAITING_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MediaDetailsDialog"


# instance fields
.field private m_Activity:Landroid/app/Activity;

.field private m_Dialog:Landroid/app/Dialog;

.field private final m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

.field private final m_ItemStringFormat:Ljava/lang/String;

.field private final m_Media:Lcom/oneplus/gallery/media/Media;

.field private m_MediaDetails:Lcom/oneplus/gallery/media/MediaDetails;

.field private m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

.field private m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oneplus/gallery/media/Media;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/oneplus/gallery/MediaDetailsDialog$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$1;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 93
    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_ItemStringFormat:Ljava/lang/String;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/MediaDetailsDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery/MediaDetailsDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/MediaDetailsDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/gallery/MediaDetailsDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/MediaDetailsDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery/MediaDetailsDialog;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/MediaDetailsDialog;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/gallery/MediaDetailsDialog;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/MediaDetailsDialog;Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaDetails;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/MediaDetails;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery/GalleryDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    return-object v0
.end method

.method private createDateTimeItem(Landroid/view/ViewGroup;IJ)V
    .locals 3
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "time"    # J

    .prologue
    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 101
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 102
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method private createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)V
    .locals 5
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # D
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 110
    return-void
.end method

.method private createIntItem(Landroid/view/ViewGroup;II)V
    .locals 1
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # I

    .prologue
    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-static {v1, v2, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_ItemStringFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v4, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method private onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 5
    .param p1, "details"    # Lcom/oneplus/gallery/media/MediaDetails;

    .prologue
    .line 158
    iget-object v2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 165
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery/media/MediaDetails;

    .line 168
    iget-object v2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 170
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    const v3, 0x7f06002f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 174
    .local v0, "itemContainer":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 176
    sget-object v2, Lcom/oneplus/gallery/MediaDetailsDialog$4;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v3, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 185
    const-string v2, "MediaDetailsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaDetailsRetrieved() - Unknown media type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 179
    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/MediaDetailsDialog;->showPhotoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery/media/MediaDetails;)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/MediaDetailsDialog;->showVideoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery/media/MediaDetails;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMediaDetailsTimeout()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v1, "MediaDetailsDialog"

    const-string v2, "onMediaDetailsTimeout()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 206
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onPrepareDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 216
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    .line 217
    .local v3, "result":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery/media/MediaDetails;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    new-instance v5, Lcom/oneplus/gallery/MediaDetailsDialog$2;

    invoke-direct {v5, p0, v3}, Lcom/oneplus/gallery/MediaDetailsDialog$2;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;[Ljava/lang/Object;)V

    invoke-interface {v4, v5, v7}, Lcom/oneplus/gallery/media/Media;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery/GalleryDialogFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 271
    .local v2, "isDarkMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_1

    const v4, 0x7f0a000d

    :goto_0
    invoke-direct {v0, p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 272
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090059

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 273
    const v4, 0x7f030008

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 274
    const v4, 0x104000a

    new-instance v5, Lcom/oneplus/gallery/MediaDetailsDialog$3;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$3;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    .line 289
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery/media/MediaDetails;

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery/media/MediaDetails;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 317
    :goto_1
    return-void

    .line 271
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f0a000b

    goto :goto_0

    .line 291
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;

    if-eqz v4, :cond_4

    .line 293
    monitor-enter v3

    .line 298
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_2
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 307
    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, Lcom/oneplus/gallery/media/MediaDetails;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 313
    :goto_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 300
    :catch_0
    move-exception v1

    .line 302
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "MediaDetailsDialog"

    const-string v5, "show() - Interrupted"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 310
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 311
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaDetailsDialog;->onMediaDetailsTimeout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 316
    :cond_4
    invoke-direct {p0, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/MediaDetails;)V

    goto :goto_1
.end method

.method private showPhotoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 26
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "details"    # Lcom/oneplus/gallery/media/MediaDetails;

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "filePath":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 351
    const v5, 0x7f09005a

    invoke-static {v12}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 354
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v22

    .line 355
    .local v22, "time":J
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-lez v5, :cond_1

    .line 356
    const v5, 0x7f09005c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)V

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v14

    .line 360
    .local v14, "location":Landroid/location/Location;
    if-eqz v14, :cond_2

    .line 361
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

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 370
    :cond_2
    const v5, 0x7f090060

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%dx%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v10}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v10}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v20

    .line 378
    .local v20, "size":J
    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-lez v5, :cond_3

    .line 379
    const v5, 0x7f090062

    invoke-static/range {v20 .. v21}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 382
    :cond_3
    if-eqz p2, :cond_d

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v5

    .line 383
    .local v19, "strValue":Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_4

    .line 384
    const v5, 0x7f090063

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 387
    :cond_4
    if-eqz p2, :cond_e

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v5

    .line 388
    :goto_1
    if-eqz v19, :cond_5

    .line 389
    const v5, 0x7f090064

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 392
    :cond_5
    if-eqz p2, :cond_f

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v4, v5

    .line 393
    .local v4, "boolValue":Ljava/lang/Boolean;
    :goto_2
    if-eqz v4, :cond_6

    .line 394
    const v6, 0x7f090067

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    const v7, 0x7f090068

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 397
    :cond_6
    if-eqz p2, :cond_11

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-object v11, v5

    .line 398
    .local v11, "doubleValue":Ljava/lang/Double;
    :goto_4
    if-eqz v11, :cond_7

    .line 399
    const v7, 0x7f09006a

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "%.2f mm"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)V

    .line 402
    :cond_7
    if-eqz p2, :cond_12

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v13, v5

    .line 403
    .local v13, "intValue":Ljava/lang/Integer;
    :goto_5
    if-eqz v13, :cond_8

    .line 404
    const v6, 0x7f09006b

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    const v7, 0x7f090065

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 407
    :cond_8
    if-eqz p2, :cond_14

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-object v11, v5

    .line 408
    :goto_7
    if-eqz v11, :cond_9

    .line 409
    const v7, 0x7f09006c

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "f/%.1f"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)V

    .line 412
    :cond_9
    if-eqz p2, :cond_15

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    move-object v15, v5

    .line 413
    .local v15, "rationalValue":Landroid/util/Rational;
    :goto_8
    if-eqz v15, :cond_a

    .line 415
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 416
    const v5, 0x7f09006d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 435
    .end local v15    # "rationalValue":Landroid/util/Rational;
    :cond_a
    :goto_9
    if-eqz p2, :cond_18

    sget-object v5, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/oneplus/gallery/media/MediaDetails;->get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v13, v5

    .line 436
    :goto_a
    if-eqz v13, :cond_b

    .line 437
    const v5, 0x7f09006e

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createIntItem(Landroid/view/ViewGroup;II)V

    .line 440
    :cond_b
    if-eqz v12, :cond_c

    .line 441
    const v5, 0x7f090070

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 442
    :cond_c
    return-void

    .line 382
    .end local v4    # "boolValue":Ljava/lang/Boolean;
    .end local v11    # "doubleValue":Ljava/lang/Double;
    .end local v13    # "intValue":Ljava/lang/Integer;
    .end local v19    # "strValue":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 387
    .restart local v19    # "strValue":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 392
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 394
    .restart local v4    # "boolValue":Ljava/lang/Boolean;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    const v7, 0x7f090069

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 397
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 402
    .restart local v11    # "doubleValue":Ljava/lang/Double;
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 404
    .restart local v13    # "intValue":Ljava/lang/Integer;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    const v7, 0x7f090066

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 407
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 412
    :cond_15
    const/4 v15, 0x0

    goto :goto_8

    .line 419
    .restart local v15    # "rationalValue":Landroid/util/Rational;
    :cond_16
    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    if-eqz v5, :cond_a

    .line 421
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    div-int v18, v5, v6

    .line 422
    .local v18, "seconds":I
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    rem-int v17, v5, v6

    .line 423
    .local v17, "restNumerator":I
    if-eqz v17, :cond_17

    .line 425
    new-instance v16, Landroid/util/Rational;

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/util/Rational;-><init>(II)V

    .line 426
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

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    move-object/from16 v15, v16

    .local v15, "rationalValue":Ljava/lang/Object;
    goto/16 :goto_9

    .line 429
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

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 435
    .end local v15    # "rationalValue":Landroid/util/Rational;
    .end local v17    # "restNumerator":I
    .end local v18    # "seconds":I
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_a
.end method

.method private showVideoDetails(Landroid/view/ViewGroup;Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 28
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "details"    # Lcom/oneplus/gallery/media/MediaDetails;

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/oneplus/gallery/media/VideoMedia;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v21, v0

    check-cast v21, Lcom/oneplus/gallery/media/VideoMedia;

    move-object/from16 v20, v21

    .line 450
    .local v20, "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 453
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 454
    const v21, 0x7f09005a

    invoke-static {v8}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 457
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v18

    .line 458
    .local v18, "time":J
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_1

    .line 459
    const v21, 0x7f09005c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)V

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 463
    .local v9, "location":Landroid/location/Location;
    if-eqz v9, :cond_2

    .line 464
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

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 473
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

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/oneplus/gallery/media/Media;->getHeight()I

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

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 476
    if-eqz v20, :cond_3

    .line 478
    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery/media/VideoMedia;->getDuration()J

    move-result-wide v6

    .line 479
    .local v6, "duration":J
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_3

    .line 481
    const-wide/16 v22, 0x1f4

    add-long v6, v6, v22

    .line 482
    const-wide/32 v22, 0x36ee80

    div-long v10, v6, v22

    .line 483
    .local v10, "hours":J
    const-wide/32 v22, 0x36ee80

    rem-long v6, v6, v22

    .line 484
    const-wide/32 v22, 0xea60

    div-long v12, v6, v22

    .line 485
    .local v12, "minutes":J
    const-wide/32 v22, 0xea60

    rem-long v6, v6, v22

    .line 486
    const-wide/16 v22, 0x3e8

    div-long v14, v6, v22

    .line 487
    .local v14, "seconds":J
    const-wide/16 v22, 0x1

    cmp-long v21, v10, v22

    if-gez v21, :cond_7

    .line 488
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

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 495
    .end local v6    # "duration":J
    .end local v10    # "hours":J
    .end local v12    # "minutes":J
    .end local v14    # "seconds":J
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v16

    .line 496
    .local v16, "size":J
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-lez v21, :cond_4

    .line 497
    const v21, 0x7f090062

    invoke-static/range {v16 .. v17}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 500
    :cond_4
    if-eqz v8, :cond_5

    .line 501
    const v21, 0x7f090070

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 502
    :cond_5
    return-void

    .line 449
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "location":Landroid/location/Location;
    .end local v16    # "size":J
    .end local v18    # "time":J
    .end local v20    # "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 490
    .restart local v6    # "duration":J
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v9    # "location":Landroid/location/Location;
    .restart local v10    # "hours":J
    .restart local v12    # "minutes":J
    .restart local v14    # "seconds":J
    .restart local v18    # "time":J
    .restart local v20    # "videoMedia":Lcom/oneplus/gallery/media/VideoMedia;
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

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 141
    :cond_0
    return-void
.end method

.method public getMedia()Lcom/oneplus/gallery/media/Media;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/gallery/MediaDetailsDialog;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 328
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Activity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/base/BaseActivity;

    const-string v2, "MediaDetailsDialog.DialogFragment"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
