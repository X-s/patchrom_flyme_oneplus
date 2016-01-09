.class public final Landroid/provider/CalendarContract$EventDays;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/CalendarContract$EventDaysColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDays"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final SELECTION:Ljava/lang/String; = "selected=1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2031
    const-string v0, "content://com.android.calendar/instances/groupbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventDays;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;II[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "startDay"    # I
    .param p2, "numDays"    # I
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2057
    const-string v0, "CalendarContract"

    const-string v1, "query"

    invoke-static {v0, v1}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    const-string v8, "CalendarContract|query|--end"

    .line 2059
    .local v8, "paras":Ljava/lang/String;
    invoke-static {v8}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 2062
    .end local v8    # "paras":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 2069
    :goto_0
    return-object v4

    .line 2065
    :cond_1
    add-int v0, p1, p2

    add-int/lit8 v7, v0, -0x1

    .line 2066
    .local v7, "endDay":I
    sget-object v0, Landroid/provider/CalendarContract$EventDays;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2067
    .local v6, "builder":Landroid/net/Uri$Builder;
    int-to-long v0, p1

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 2068
    int-to-long v0, v7

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 2069
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "selected=1"

    const-string v5, "startDay"

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method
