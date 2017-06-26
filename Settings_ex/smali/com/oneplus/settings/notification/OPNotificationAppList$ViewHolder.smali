.class Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field row:Landroid/view/ViewGroup;

.field rowDivider:Landroid/view/View;

.field subtitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList$1;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;-><init>()V

    return-void
.end method
