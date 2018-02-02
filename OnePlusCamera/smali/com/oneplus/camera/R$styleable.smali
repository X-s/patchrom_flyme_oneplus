.class public final Lcom/oneplus/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdvSettings:[I

.field public static final AdvSettings_actionBarDividerBackground:I = 0x0

.field public static final AdvSettings_advItemSubTitle:I = 0x4

.field public static final AdvSettings_advItemSummary:I = 0x2

.field public static final AdvSettings_advItemTitle:I = 0x3

.field public static final AdvSettings_agreementText:I = 0x7

.field public static final AdvSettings_copyrightText:I = 0x6

.field public static final AdvSettings_dividerLineColor:I = 0x1

.field public static final AdvSettings_versionText:I = 0x5

.field public static final ScaleImageView:[I

.field public static final ScaleImageView_oriental:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2771
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/camera/R$styleable;->AdvSettings:[I

    .line 2875
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2876
    const/high16 v1, 0x7f010000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2875
    sput-object v0, Lcom/oneplus/camera/R$styleable;->ScaleImageView:[I

    .line 2746
    return-void

    .line 2771
    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
