.class public Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
.super Ljava/lang/Object;
.source "OpThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/OpThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeFileInfo"
.end annotation


# instance fields
.field public mDensity:I

.field public mInput:Ljava/io/InputStream;

.field public mSize:J

.field final synthetic this$0:Landroid/content/res/OpThemeZipFile;


# direct methods
.method constructor <init>(Landroid/content/res/OpThemeZipFile;Ljava/io/InputStream;J)V
    .locals 1
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "size"    # J

    .prologue
    .line 447
    iput-object p1, p0, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->this$0:Landroid/content/res/OpThemeZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 449
    iput-wide p3, p0, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mSize:J

    .line 450
    return-void
.end method
