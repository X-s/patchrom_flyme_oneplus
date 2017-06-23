.class Landroid/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p1, p0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 770
    iput p2, p0, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 771
    iput p3, p0, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 772
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 773
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 777
    iput p2, p0, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 778
    iput p3, p0, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 779
    iput p4, p0, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/media/ExifInterface$1;

    .prologue
    .line 762
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/media/ExifInterface$1;

    .prologue
    .line 762
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method
