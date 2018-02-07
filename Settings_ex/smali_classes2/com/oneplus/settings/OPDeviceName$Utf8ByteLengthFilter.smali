.class Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "OPDeviceName.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDeviceName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Utf8ByteLengthFilter"
.end annotation


# instance fields
.field private final mMaxBytes:I

.field final synthetic this$0:Lcom/oneplus/settings/OPDeviceName;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDeviceName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPDeviceName;
    .param p2, "maxBytes"    # I

    .prologue
    .line 271
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput p2, p0, Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;->mMaxBytes:I

    .line 271
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 277
    const/4 v5, 0x0

    .line 279
    .local v5, "srcByteCount":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 280
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 281
    .local v0, "c":C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v5, v6

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_0
    const/16 v6, 0x800

    if-ge v0, v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    .line 284
    .end local v0    # "c":C
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 285
    .local v2, "destLen":I
    const/4 v1, 0x0

    .line 287
    .local v1, "destByteCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 288
    if-lt v3, p5, :cond_3

    if-lt v3, p6, :cond_4

    .line 289
    :cond_3
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 290
    .restart local v0    # "c":C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v1, v6

    .line 287
    .end local v0    # "c":C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 291
    .restart local v0    # "c":C
    :cond_5
    const/16 v6, 0x800

    if-ge v0, v6, :cond_6

    const/4 v6, 0x2

    goto :goto_3

    :cond_6
    const/4 v6, 0x3

    goto :goto_3

    .line 294
    .end local v0    # "c":C
    :cond_7
    iget v6, p0, Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    .line 295
    .local v4, "keepBytes":I
    if-gtz v4, :cond_8

    .line 296
    const-string/jumbo v6, ""

    return-object v6

    .line 297
    :cond_8
    if-lt v4, v5, :cond_9

    .line 298
    const/4 v6, 0x0

    return-object v6

    .line 301
    :cond_9
    move v3, p2

    :goto_4
    if-ge v3, p3, :cond_d

    .line 302
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 303
    .restart local v0    # "c":C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_a

    const/4 v6, 0x1

    :goto_5
    sub-int/2addr v4, v6

    .line 305
    if-gez v4, :cond_c

    .line 306
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    .line 304
    :cond_a
    const/16 v6, 0x800

    if-ge v0, v6, :cond_b

    const/4 v6, 0x2

    goto :goto_5

    :cond_b
    const/4 v6, 0x3

    goto :goto_5

    .line 301
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 312
    .end local v0    # "c":C
    :cond_d
    const/4 v6, 0x0

    return-object v6
.end method
