.class Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;
.super Ljava/lang/Object;
.source "ColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorModeDescription"
.end annotation


# instance fields
.field private colorMode:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;->colorMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;->colorMode:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;->summary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;->title:Ljava/lang/String;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/ColorModePreference$ColorModeDescription;-><init>()V

    return-void
.end method
