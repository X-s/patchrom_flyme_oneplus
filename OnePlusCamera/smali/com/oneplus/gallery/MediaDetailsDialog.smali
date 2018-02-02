.class public Lcom/oneplus/gallery/MediaDetailsDialog;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"


# static fields
.field private static final synthetic -com-oneplus-gallery2-media-MediaTypeSwitchesValues:[I


# instance fields
.field private final m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_Dialog:Landroid/app/AlertDialog;

.field private m_DialogHandle:Lcom/oneplus/base/Handle;

.field private m_DialogManager:Lcom/oneplus/camera/DialogManager;

.field private m_IsShown:Z

.field private final m_Media:Lcom/oneplus/gallery2/media/Media;

.field private m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

.field private m_MediaDetailsObtainHandle:Lcom/oneplus/base/Handle;

.field private m_MediaSize:Landroid/util/Size;

.field private m_MediaSizeObtainHandle:Lcom/oneplus/base/Handle;

.field private m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private m_VideoDuration:Ljava/lang/Long;

.field private m_VideoDurationHandle:Lcom/oneplus/base/Handle;


# direct methods
.method private static synthetic -getcom-oneplus-gallery2-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/MediaDetailsDialog;->-com-oneplus-gallery2-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/MediaDetailsDialog;->-com-oneplus-gallery2-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaType;->values()[Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/gallery/MediaDetailsDialog;->-com-oneplus-gallery2-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/gallery/MediaDetailsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_IsShown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/gallery/MediaDetailsDialog;Lcom/oneplus/gallery2/media/MediaDetails;)Lcom/oneplus/gallery2/media/MediaDetails;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/gallery/MediaDetailsDialog;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/gallery/MediaDetailsDialog;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDuration:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/gallery/MediaDetailsDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/MediaDetailsDialog;->checkMediaInfoState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery2/media/MediaDetails;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createEmptyMediaDetails()Lcom/oneplus/gallery2/media/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No camera activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No media."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 64
    iput-object p2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 57
    return-void
.end method

.method private checkMediaInfoState()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    return v2

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDuration:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 75
    return v2

    .line 78
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_IsShown:Z

    if-nez v0, :cond_3

    .line 79
    return v5

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f030021

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 86
    .local v8, "rootView":Landroid/view/View;
    const v0, 0x7f09009f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 87
    .local v7, "container":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/oneplus/gallery/MediaDetailsDialog;->-getcom-oneplus-gallery2-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    return v2

    .line 90
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->preparePhotoDetails(Landroid/view/ViewGroup;)V

    .line 100
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0c001c

    :goto_1
    invoke-direct {v6, v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 101
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0b0075

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$1;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    const v2, 0x104000a

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$2;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_4
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    .line 128
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v8    # "rootView":Landroid/view/View;
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    if-eqz v0, :cond_8

    .line 129
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/camera/DialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    .line 134
    :goto_2
    return v5

    .line 93
    .restart local v7    # "container":Landroid/view/ViewGroup;
    .restart local v8    # "rootView":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->prepareVideoDetails(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 100
    :cond_6
    const v0, 0x7f0c001a

    goto :goto_1

    .line 124
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v8    # "rootView":Landroid/view/View;
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    return v5

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createDateTimeItem(Landroid/view/ViewGroup;IJ)Landroid/view/View;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "time"    # J

    .prologue
    .line 141
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 142
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 143
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # D
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    .line 150
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createEmptyMediaDetails()Lcom/oneplus/gallery2/media/MediaDetails;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-static {}, Lcom/oneplus/gallery/MediaDetailsDialog;->-getcom-oneplus-gallery2-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    return-object v2

    .line 160
    :pswitch_0
    new-instance v0, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;

    invoke-direct {v0, v2}, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 162
    :pswitch_1
    new-instance v0, Lcom/oneplus/gallery2/media/SimpleVideoMediaDetails;

    invoke-direct {v0, v2}, Lcom/oneplus/gallery2/media/SimpleVideoMediaDetails;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createIntItem(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # I

    .prologue
    .line 172
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 194
    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    return-object v0
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 179
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v5, 0x7f030022

    invoke-static {v4, v5, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, "tv":Landroid/widget/TextView;
    const-string/jumbo v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v6, p2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-array v0, v8, [I

    const v4, 0x1010038

    aput v4, v0, v7

    .line 185
    .local v0, "attrs":[I
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const v1, 0x7f0c001c

    .line 186
    .local v1, "style":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v4, v1, v0}, Lcom/oneplus/camera/CameraActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 187
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    return-object v3

    .line 185
    .end local v1    # "style":I
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    const v1, 0x7f0c001a

    .restart local v1    # "style":I
    goto :goto_0
.end method

.method private preparePhotoDetails(Landroid/view/ViewGroup;)V
    .locals 29
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "filePath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 223
    invoke-static {v4}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0076

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v26

    .line 227
    .local v26, "time":J
    const-wide/16 v6, 0x0

    cmp-long v5, v26, v6

    if-lez v5, :cond_1

    .line 228
    const v5, 0x7f0b0077

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)Landroid/view/View;

    .line 231
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v19

    .line 232
    .local v19, "obj":Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v5, v0, Landroid/location/Location;

    if-eqz v5, :cond_2

    move-object/from16 v18, v19

    .line 234
    check-cast v18, Landroid/location/Location;

    .line 235
    .local v18, "location":Landroid/location/Location;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%.6f, %.6f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0078

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 239
    .end local v18    # "location":Landroid/location/Location;
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%dx%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b007b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v24

    .line 243
    .local v24, "size":J
    const-wide/16 v6, 0x0

    cmp-long v5, v24, v6

    if-lez v5, :cond_3

    .line 244
    invoke-static/range {v24 .. v25}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b007d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 248
    const v5, 0x7f0b007e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 252
    const v5, 0x7f0b007f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 256
    check-cast v19, Ljava/lang/Boolean;

    .end local v19    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v6, 0x7f0b0083

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const v6, 0x7f0b0082

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 260
    .local v8, "focalLength":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    .line 261
    const-string/jumbo v10, "%.2f mm"

    const v7, 0x7f0b0085

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)Landroid/view/View;

    .line 264
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 265
    .local v28, "wb":I
    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v6, 0x7f0b0080

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const v6, 0x7f0b0086

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 269
    .local v14, "aperture":D
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_5

    .line 270
    const-string/jumbo v16, "f/%.1f"

    const v13, 0x7f0b0087

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)Landroid/view/View;

    .line 273
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Rational;

    .line 274
    .local v22, "shutterSpeed":Landroid/util/Rational;
    if-eqz v22, :cond_6

    .line 276
    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 277
    const v5, 0x7f0b0088

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 296
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaDetails;->get(Lcom/oneplus/gallery2/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 297
    .local v17, "iso":I
    if-lez v17, :cond_7

    .line 298
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0b0089

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 301
    :cond_7
    if-eqz v4, :cond_8

    .line 302
    const v5, 0x7f0b008b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 216
    :cond_8
    return-void

    .line 256
    .end local v8    # "focalLength":D
    .end local v14    # "aperture":D
    .end local v17    # "iso":I
    .end local v22    # "shutterSpeed":Landroid/util/Rational;
    .end local v28    # "wb":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v6, 0x7f0b0084

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 265
    .restart local v8    # "focalLength":D
    .restart local v28    # "wb":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v6, 0x7f0b0081

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 280
    .restart local v14    # "aperture":D
    .restart local v22    # "shutterSpeed":Landroid/util/Rational;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    if-eqz v5, :cond_6

    .line 282
    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    div-int v21, v5, v6

    .line 283
    .local v21, "seconds":I
    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    rem-int v20, v5, v6

    .line 284
    .local v20, "restNumerator":I
    if-eqz v20, :cond_c

    .line 286
    new-instance v23, Landroid/util/Rational;

    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v1, v5}, Landroid/util/Rational;-><init>(II)V

    .line 287
    .end local v22    # "shutterSpeed":Landroid/util/Rational;
    .local v23, "shutterSpeed":Landroid/util/Rational;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%d\"%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const/4 v10, 0x1

    aput-object v23, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0088

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-object/from16 v22, v23

    .end local v23    # "shutterSpeed":Landroid/util/Rational;
    .restart local v22    # "shutterSpeed":Landroid/util/Rational;
    goto/16 :goto_2

    .line 290
    :cond_c
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%d\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0088

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_2
.end method

.method private prepareVideoDetails(Landroid/view/ViewGroup;)V
    .locals 26
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 314
    invoke-static {v8}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0b0076

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v18

    .line 318
    .local v18, "time":J
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-lez v20, :cond_1

    .line 319
    const v20, 0x7f0b0077

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)Landroid/view/View;

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery2/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 323
    .local v9, "location":Landroid/location/Location;
    if-eqz v9, :cond_2

    .line 324
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, "%.6f, %.6f"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0b0078

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 327
    :cond_2
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, "%dx%d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/Size;->getHeight()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0b007b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDuration:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 331
    .local v6, "duration":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_3

    .line 334
    const-wide/16 v20, 0x1f4

    add-long v6, v6, v20

    .line 335
    const-wide/32 v20, 0x36ee80

    div-long v10, v6, v20

    .line 336
    .local v10, "hours":J
    const-wide/32 v20, 0x36ee80

    rem-long v6, v6, v20

    .line 337
    const-wide/32 v20, 0xea60

    div-long v12, v6, v20

    .line 338
    .local v12, "minutes":J
    const-wide/32 v20, 0xea60

    rem-long v6, v6, v20

    .line 339
    const-wide/16 v20, 0x3e8

    div-long v14, v6, v20

    .line 340
    .local v14, "seconds":J
    const-wide/16 v20, 0x1

    cmp-long v20, v10, v20

    if-gez v20, :cond_6

    .line 341
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, "%02d:%02d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0b008a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 347
    .end local v10    # "hours":J
    .end local v12    # "minutes":J
    .end local v14    # "seconds":J
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v16

    .line 348
    .local v16, "size":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_4

    .line 349
    invoke-static/range {v16 .. v17}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0b007d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 352
    :cond_4
    if-eqz v8, :cond_5

    .line 353
    const v20, 0x7f0b008b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 307
    :cond_5
    return-void

    .line 343
    .end local v16    # "size":J
    .restart local v10    # "hours":J
    .restart local v12    # "minutes":J
    .restart local v14    # "seconds":J
    :cond_6
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, "%02d:%02d:%02d"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f0b008a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_IsShown:Z

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_IsShown:Z

    .line 208
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->show(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 360
    return-void
.end method

.method public show(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_IsShown:Z

    if-eqz v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-class v1, Lcom/oneplus/camera/DialogManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/DialogManager;

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    .line 384
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_IsShown:Z

    .line 385
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 388
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaDetailsDialog;->checkMediaInfoState()Z

    move-result v0

    if-nez v0, :cond_6

    .line 391
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsObtainHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 409
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSizeObtainHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 425
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDuration:Ljava/lang/Long;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDurationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 441
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaDetailsDialog;->checkMediaInfoState()Z

    .line 370
    :cond_6
    return-void

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$3;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/Media;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsObtainHandle:Lcom/oneplus/base/Handle;

    .line 404
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsObtainHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createEmptyMediaDetails()Lcom/oneplus/gallery2/media/MediaDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetails:Lcom/oneplus/gallery2/media/MediaDetails;

    goto :goto_0

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$4;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSizeObtainHandle:Lcom/oneplus/base/Handle;

    .line 420
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSizeObtainHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 421
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaSize:Landroid/util/Size;

    goto :goto_1

    .line 427
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Media:Lcom/oneplus/gallery2/media/Media;

    check-cast v0, Lcom/oneplus/gallery2/media/VideoMedia;

    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$5;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/VideoMedia;->getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDurationHandle:Lcom/oneplus/base/Handle;

    .line 436
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDurationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 437
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_VideoDuration:Ljava/lang/Long;

    goto :goto_2
.end method
