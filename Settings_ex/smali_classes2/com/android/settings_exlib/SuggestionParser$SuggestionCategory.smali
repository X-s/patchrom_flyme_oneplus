.class Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/SuggestionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionCategory"
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public multiple:Z

.field public pkg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;-><init>()V

    return-void
.end method
