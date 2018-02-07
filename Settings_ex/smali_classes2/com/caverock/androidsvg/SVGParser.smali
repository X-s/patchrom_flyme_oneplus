.class public Lcom/caverock/androidsvg/SVGParser;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$TextScanner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I = null

.field private static final CURRENTCOLOR:Ljava/lang/String; = "currentColor"

.field private static final FEATURE_STRING_PREFIX:Ljava/lang/String; = "http://www.w3.org/TR/SVG11/feature#"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SVG_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field private static final TAG:Ljava/lang/String; = "SVGParser"

.field private static final TAG_A:Ljava/lang/String; = "a"

.field private static final TAG_CIRCLE:Ljava/lang/String; = "circle"

.field private static final TAG_CLIPPATH:Ljava/lang/String; = "clipPath"

.field private static final TAG_DEFS:Ljava/lang/String; = "defs"

.field private static final TAG_DESC:Ljava/lang/String; = "desc"

.field private static final TAG_ELLIPSE:Ljava/lang/String; = "ellipse"

.field private static final TAG_G:Ljava/lang/String; = "g"

.field private static final TAG_IMAGE:Ljava/lang/String; = "image"

.field private static final TAG_LINE:Ljava/lang/String; = "line"

.field private static final TAG_LINEARGRADIENT:Ljava/lang/String; = "linearGradient"

.field private static final TAG_MARKER:Ljava/lang/String; = "marker"

.field private static final TAG_MASK:Ljava/lang/String; = "mask"

.field private static final TAG_PATH:Ljava/lang/String; = "path"

.field private static final TAG_PATTERN:Ljava/lang/String; = "pattern"

.field private static final TAG_POLYGON:Ljava/lang/String; = "polygon"

.field private static final TAG_POLYLINE:Ljava/lang/String; = "polyline"

.field private static final TAG_RADIALGRADIENT:Ljava/lang/String; = "radialGradient"

.field private static final TAG_RECT:Ljava/lang/String; = "rect"

.field private static final TAG_SOLIDCOLOR:Ljava/lang/String; = "solidColor"

.field private static final TAG_STOP:Ljava/lang/String; = "stop"

.field private static final TAG_STYLE:Ljava/lang/String; = "style"

.field private static final TAG_SVG:Ljava/lang/String; = "svg"

.field private static final TAG_SWITCH:Ljava/lang/String; = "switch"

.field private static final TAG_SYMBOL:Ljava/lang/String; = "symbol"

.field private static final TAG_TEXT:Ljava/lang/String; = "text"

.field private static final TAG_TEXTPATH:Ljava/lang/String; = "textPath"

.field private static final TAG_TITLE:Ljava/lang/String; = "title"

.field private static final TAG_TREF:Ljava/lang/String; = "tref"

.field private static final TAG_TSPAN:Ljava/lang/String; = "tspan"

.field private static final TAG_USE:Ljava/lang/String; = "use"

.field private static final TAG_VIEW:Ljava/lang/String; = "view"

.field private static final VALID_DISPLAY_VALUES:Ljava/lang/String; = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

.field private static final VALID_VISIBILITY_VALUES:Ljava/lang/String; = "|visible|hidden|collapse|"

.field private static final XLINK_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field private static aspectRatioKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private static colourKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static fontSizeKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field private static fontStyleKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Style$FontStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static fontWeightKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Ljava/lang/String;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private supportedFormats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_59

    :goto_2
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_58

    :goto_3
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_57

    :goto_4
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_56

    :goto_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_55

    :goto_6
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_54

    :goto_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_53

    :goto_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_52

    :goto_9
    :try_start_a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_51

    :goto_a
    :try_start_b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_50

    :goto_b
    :try_start_c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4f

    :goto_c
    :try_start_d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4e

    :goto_d
    :try_start_e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4d

    :goto_e
    :try_start_f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4c

    :goto_f
    :try_start_10
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4b

    :goto_10
    :try_start_11
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4a

    :goto_11
    :try_start_12
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_49

    :goto_12
    :try_start_13
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_48

    :goto_13
    :try_start_14
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_47

    :goto_14
    :try_start_15
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_46

    :goto_15
    :try_start_16
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_45

    :goto_16
    :try_start_17
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_44

    :goto_17
    :try_start_18
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_43

    :goto_18
    :try_start_19
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_42

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_41

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_40

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->id:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3f

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_3e

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_3d

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3c

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_3b

    :goto_20
    :try_start_21
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3a

    :goto_21
    :try_start_22
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_39

    :goto_22
    :try_start_23
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_38

    :goto_23
    :try_start_24
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_37

    :goto_24
    :try_start_25
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_36

    :goto_25
    :try_start_26
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_35

    :goto_26
    :try_start_27
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_34

    :goto_27
    :try_start_28
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_33

    :goto_28
    :try_start_29
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_32

    :goto_29
    :try_start_2a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_31

    :goto_2a
    :try_start_2b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_30

    :goto_2b
    :try_start_2c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2f

    :goto_2c
    :try_start_2d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2e

    :goto_2d
    :try_start_2e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2d

    :goto_2e
    :try_start_2f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2c

    :goto_2f
    :try_start_30
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_2b

    :goto_30
    :try_start_31
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_2a

    :goto_31
    :try_start_32
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_29

    :goto_32
    :try_start_33
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_28

    :goto_33
    :try_start_34
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_27

    :goto_34
    :try_start_35
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_26

    :goto_35
    :try_start_36
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_25

    :goto_36
    :try_start_37
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_24

    :goto_37
    :try_start_38
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_23

    :goto_38
    :try_start_39
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_22

    :goto_39
    :try_start_3a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_21

    :goto_3a
    :try_start_3b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_20

    :goto_3b
    :try_start_3c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_1f

    :goto_3c
    :try_start_3d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_1e

    :goto_3d
    :try_start_3e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_1d

    :goto_3e
    :try_start_3f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_1c

    :goto_3f
    :try_start_40
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_1b

    :goto_40
    :try_start_41
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_1a

    :goto_41
    :try_start_42
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_19

    :goto_42
    :try_start_43
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_18

    :goto_43
    :try_start_44
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_17

    :goto_44
    :try_start_45
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_16

    :goto_45
    :try_start_46
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_15

    :goto_46
    :try_start_47
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_14

    :goto_47
    :try_start_48
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_13

    :goto_48
    :try_start_49
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_12

    :goto_49
    :try_start_4a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_11

    :goto_4a
    :try_start_4b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_10

    :goto_4b
    :try_start_4c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_f

    :goto_4c
    :try_start_4d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_e

    :goto_4d
    :try_start_4e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_d

    :goto_4e
    :try_start_4f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_c

    :goto_4f
    :try_start_50
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_b

    :goto_50
    :try_start_51
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_a

    :goto_51
    :try_start_52
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_9

    :goto_52
    :try_start_53
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_8

    :goto_53
    :try_start_54
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_7

    :goto_54
    :try_start_55
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_6

    :goto_55
    :try_start_56
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_5

    :goto_56
    :try_start_57
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_4

    :goto_57
    :try_start_58
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_3

    :goto_58
    :try_start_59
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_2

    :goto_59
    :try_start_5a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_1

    :goto_5a
    :try_start_5b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_0

    :goto_5b
    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5b

    :catch_1
    move-exception v1

    goto :goto_5a

    :catch_2
    move-exception v1

    goto :goto_59

    :catch_3
    move-exception v1

    goto :goto_58

    :catch_4
    move-exception v1

    goto :goto_57

    :catch_5
    move-exception v1

    goto :goto_56

    :catch_6
    move-exception v1

    goto :goto_55

    :catch_7
    move-exception v1

    goto :goto_54

    :catch_8
    move-exception v1

    goto :goto_53

    :catch_9
    move-exception v1

    goto :goto_52

    :catch_a
    move-exception v1

    goto :goto_51

    :catch_b
    move-exception v1

    goto/16 :goto_50

    :catch_c
    move-exception v1

    goto/16 :goto_4f

    :catch_d
    move-exception v1

    goto/16 :goto_4e

    :catch_e
    move-exception v1

    goto/16 :goto_4d

    :catch_f
    move-exception v1

    goto/16 :goto_4c

    :catch_10
    move-exception v1

    goto/16 :goto_4b

    :catch_11
    move-exception v1

    goto/16 :goto_4a

    :catch_12
    move-exception v1

    goto/16 :goto_49

    :catch_13
    move-exception v1

    goto/16 :goto_48

    :catch_14
    move-exception v1

    goto/16 :goto_47

    :catch_15
    move-exception v1

    goto/16 :goto_46

    :catch_16
    move-exception v1

    goto/16 :goto_45

    :catch_17
    move-exception v1

    goto/16 :goto_44

    :catch_18
    move-exception v1

    goto/16 :goto_43

    :catch_19
    move-exception v1

    goto/16 :goto_42

    :catch_1a
    move-exception v1

    goto/16 :goto_41

    :catch_1b
    move-exception v1

    goto/16 :goto_40

    :catch_1c
    move-exception v1

    goto/16 :goto_3f

    :catch_1d
    move-exception v1

    goto/16 :goto_3e

    :catch_1e
    move-exception v1

    goto/16 :goto_3d

    :catch_1f
    move-exception v1

    goto/16 :goto_3c

    :catch_20
    move-exception v1

    goto/16 :goto_3b

    :catch_21
    move-exception v1

    goto/16 :goto_3a

    :catch_22
    move-exception v1

    goto/16 :goto_39

    :catch_23
    move-exception v1

    goto/16 :goto_38

    :catch_24
    move-exception v1

    goto/16 :goto_37

    :catch_25
    move-exception v1

    goto/16 :goto_36

    :catch_26
    move-exception v1

    goto/16 :goto_35

    :catch_27
    move-exception v1

    goto/16 :goto_34

    :catch_28
    move-exception v1

    goto/16 :goto_33

    :catch_29
    move-exception v1

    goto/16 :goto_32

    :catch_2a
    move-exception v1

    goto/16 :goto_31

    :catch_2b
    move-exception v1

    goto/16 :goto_30

    :catch_2c
    move-exception v1

    goto/16 :goto_2f

    :catch_2d
    move-exception v1

    goto/16 :goto_2e

    :catch_2e
    move-exception v1

    goto/16 :goto_2d

    :catch_2f
    move-exception v1

    goto/16 :goto_2c

    :catch_30
    move-exception v1

    goto/16 :goto_2b

    :catch_31
    move-exception v1

    goto/16 :goto_2a

    :catch_32
    move-exception v1

    goto/16 :goto_29

    :catch_33
    move-exception v1

    goto/16 :goto_28

    :catch_34
    move-exception v1

    goto/16 :goto_27

    :catch_35
    move-exception v1

    goto/16 :goto_26

    :catch_36
    move-exception v1

    goto/16 :goto_25

    :catch_37
    move-exception v1

    goto/16 :goto_24

    :catch_38
    move-exception v1

    goto/16 :goto_23

    :catch_39
    move-exception v1

    goto/16 :goto_22

    :catch_3a
    move-exception v1

    goto/16 :goto_21

    :catch_3b
    move-exception v1

    goto/16 :goto_20

    :catch_3c
    move-exception v1

    goto/16 :goto_1f

    :catch_3d
    move-exception v1

    goto/16 :goto_1e

    :catch_3e
    move-exception v1

    goto/16 :goto_1d

    :catch_3f
    move-exception v1

    goto/16 :goto_1c

    :catch_40
    move-exception v1

    goto/16 :goto_1b

    :catch_41
    move-exception v1

    goto/16 :goto_1a

    :catch_42
    move-exception v1

    goto/16 :goto_19

    :catch_43
    move-exception v1

    goto/16 :goto_18

    :catch_44
    move-exception v1

    goto/16 :goto_17

    :catch_45
    move-exception v1

    goto/16 :goto_16

    :catch_46
    move-exception v1

    goto/16 :goto_15

    :catch_47
    move-exception v1

    goto/16 :goto_14

    :catch_48
    move-exception v1

    goto/16 :goto_13

    :catch_49
    move-exception v1

    goto/16 :goto_12

    :catch_4a
    move-exception v1

    goto/16 :goto_11

    :catch_4b
    move-exception v1

    goto/16 :goto_10

    :catch_4c
    move-exception v1

    goto/16 :goto_f

    :catch_4d
    move-exception v1

    goto/16 :goto_e

    :catch_4e
    move-exception v1

    goto/16 :goto_d

    :catch_4f
    move-exception v1

    goto/16 :goto_c

    :catch_50
    move-exception v1

    goto/16 :goto_b

    :catch_51
    move-exception v1

    goto/16 :goto_a

    :catch_52
    move-exception v1

    goto/16 :goto_9

    :catch_53
    move-exception v1

    goto/16 :goto_8

    :catch_54
    move-exception v1

    goto/16 :goto_7

    :catch_55
    move-exception v1

    goto/16 :goto_6

    :catch_56
    move-exception v1

    goto/16 :goto_5

    :catch_57
    move-exception v1

    goto/16 :goto_4

    :catch_58
    move-exception v1

    goto/16 :goto_3

    :catch_59
    move-exception v1

    goto/16 :goto_2

    :catch_5a
    move-exception v1

    goto/16 :goto_1

    :catch_5b
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x696969

    const v4, 0x2f4f4f

    const v3, 0xffff

    const/16 v6, 0x2bc

    const/16 v5, 0x190

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    .line 298
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "aliceblue"

    const v2, 0xf0f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "antiquewhite"

    const v2, 0xfaebd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "aqua"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "aquamarine"

    const v2, 0x7fffd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "azure"

    const v2, 0xf0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "beige"

    const v2, 0xf5f5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "bisque"

    const v2, 0xffe4c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "blanchedalmond"

    const v2, 0xffebcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "blueviolet"

    const v2, 0x8a2be2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "brown"

    const v2, 0xa52a2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "burlywood"

    const v2, 0xdeb887

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "cadetblue"

    const v2, 0x5f9ea0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "chartreuse"

    const v2, 0x7fff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "chocolate"

    const v2, 0xd2691e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "coral"

    const v2, 0xff7f50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "cornflowerblue"

    const v2, 0x6495ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "cornsilk"

    const v2, 0xfff8dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "crimson"

    const v2, 0xdc143c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "cyan"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkblue"

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkcyan"

    const v2, 0x8b8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgoldenrod"

    const v2, 0xb8860b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgray"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgreen"

    const/16 v2, 0x6400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgrey"

    const v2, 0xa9a9a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkkhaki"

    const v2, 0xbdb76b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkmagenta"

    const v2, 0x8b008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkolivegreen"

    const v2, 0x556b2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkorange"

    const v2, 0xff8c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkorchid"

    const v2, 0x9932cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkred"

    const/high16 v2, 0x8b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darksalmon"

    const v2, 0xe9967a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkseagreen"

    const v2, 0x8fbc8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkslateblue"

    const v2, 0x483d8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkslategray"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkslategrey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkturquoise"

    const v2, 0xced1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "darkviolet"

    const v2, 0x9400d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "deeppink"

    const v2, 0xff1493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "deepskyblue"

    const v2, 0xbfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "dimgray"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "dimgrey"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "dodgerblue"

    const v2, 0x1e90ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "firebrick"

    const v2, 0xb22222

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "floralwhite"

    const v2, 0xfffaf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "forestgreen"

    const v2, 0x228b22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "gainsboro"

    const v2, 0xdcdcdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "ghostwhite"

    const v2, 0xf8f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "gold"

    const v2, 0xffd700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "goldenrod"

    const v2, 0xdaa520

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "gray"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "greenyellow"

    const v2, 0xadff2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "honeydew"

    const v2, 0xf0fff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "hotpink"

    const v2, 0xff69b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "indianred"

    const v2, 0xcd5c5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "indigo"

    const v2, 0x4b0082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "ivory"

    const v2, 0xfffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "khaki"

    const v2, 0xf0e68c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lavender"

    const v2, 0xe6e6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lavenderblush"

    const v2, 0xfff0f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lawngreen"

    const v2, 0x7cfc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lemonchiffon"

    const v2, 0xfffacd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightblue"

    const v2, 0xadd8e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightcoral"

    const v2, 0xf08080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightcyan"

    const v2, 0xe0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgoldenrodyellow"

    const v2, 0xfafad2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgray"

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgreen"

    const v2, 0x90ee90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgrey"

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightpink"

    const v2, 0xffb6c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightsalmon"

    const v2, 0xffa07a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightseagreen"

    const v2, 0x20b2aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightskyblue"

    const v2, 0x87cefa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightslategray"

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightslategrey"

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightsteelblue"

    const v2, 0xb0c4de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lightyellow"

    const v2, 0xffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "limegreen"

    const v2, 0x32cd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "linen"

    const v2, 0xfaf0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "magenta"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumaquamarine"

    const v2, 0x66cdaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumblue"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumorchid"

    const v2, 0xba55d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumpurple"

    const v2, 0x9370db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumseagreen"

    const v2, 0x3cb371

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumslateblue"

    const v2, 0x7b68ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumspringgreen"

    const v2, 0xfa9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumturquoise"

    const v2, 0x48d1cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mediumvioletred"

    const v2, 0xc71585

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "midnightblue"

    const v2, 0x191970

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mintcream"

    const v2, 0xf5fffa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "mistyrose"

    const v2, 0xffe4e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "moccasin"

    const v2, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "navajowhite"

    const v2, 0xffdead

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "oldlace"

    const v2, 0xfdf5e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "olivedrab"

    const v2, 0x6b8e23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "orange"

    const v2, 0xffa500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "orangered"

    const v2, 0xff4500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "orchid"

    const v2, 0xda70d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "palegoldenrod"

    const v2, 0xeee8aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "palegreen"

    const v2, 0x98fb98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "paleturquoise"

    const v2, 0xafeeee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "palevioletred"

    const v2, 0xdb7093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "papayawhip"

    const v2, 0xffefd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "peachpuff"

    const v2, 0xffdab9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "peru"

    const v2, 0xcd853f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "pink"

    const v2, 0xffc0cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "plum"

    const v2, 0xdda0dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "powderblue"

    const v2, 0xb0e0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "rosybrown"

    const v2, 0xbc8f8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "royalblue"

    const v2, 0x4169e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "saddlebrown"

    const v2, 0x8b4513

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "salmon"

    const v2, 0xfa8072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "sandybrown"

    const v2, 0xf4a460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "seagreen"

    const v2, 0x2e8b57

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "seashell"

    const v2, 0xfff5ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "sienna"

    const v2, 0xa0522d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "skyblue"

    const v2, 0x87ceeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "slateblue"

    const v2, 0x6a5acd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "slategray"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "slategrey"

    const v2, 0x708090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "snow"

    const v2, 0xfffafa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "springgreen"

    const v2, 0xff7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "steelblue"

    const v2, 0x4682b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "tan"

    const v2, 0xd2b48c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "thistle"

    const v2, 0xd8bfd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "tomato"

    const v2, 0xff6347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "turquoise"

    const v2, 0x40e0d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "violet"

    const v2, 0xee82ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "wheat"

    const v2, 0xf5deb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "whitesmoke"

    const v2, 0xf5f5f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "yellowgreen"

    const v2, 0x9acd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x3f31a9fc    # 0.694f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "x-small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x3f553f7d    # 0.833f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "small"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x41200000    # 10.0f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x41400000    # 12.0f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x41666666    # 14.4f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "x-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x418a6666    # 17.3f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-large"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x41a5999a    # 20.7f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "smaller"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const v3, 0x42a6a8f6    # 83.33f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "larger"

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x42f00000    # 120.0f

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "normal"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "bold"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "bolder"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "lighter"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "100"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "200"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "300"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "400"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "500"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "600"

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "700"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "800"

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "900"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "normal"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "italic"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "oblique"

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "none"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMinYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMidYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMaxYMin"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMinYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMidYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMaxYMid"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMinYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMidYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    const-string/jumbo v1, "xMaxYMax"

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string/jumbo v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 77
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 80
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 84
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 85
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 89
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 90
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 92
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    .line 67
    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<circle>"

    const/4 v1, 0x0

    .line 1173
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1177
    new-instance v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    .line 1178
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->document:Lcom/caverock/androidsvg/SVG;

    .line 1179
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1180
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1181
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1182
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1183
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1184
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    .line 1185
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1186
    return-void

    .line 1176
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<clipPath>"

    const/4 v1, 0x0

    .line 1893
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1897
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    .line 1898
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 1899
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1900
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1901
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1902
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1903
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1904
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    .line 1905
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1906
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1907
    return-void

    .line 1896
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<defs>"

    const/4 v1, 0x0

    .line 927
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    .line 932
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->document:Lcom/caverock/androidsvg/SVG;

    .line 933
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Defs;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 934
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 935
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 936
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 937
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 938
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 939
    return-void

    .line 930
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "SVGParser"

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    if-nez v0, :cond_1

    .line 827
    :cond_0
    return-void

    .line 822
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 823
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 824
    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<ellipse>"

    const/4 v1, 0x0

    .line 1220
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1224
    new-instance v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    .line 1225
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->document:Lcom/caverock/androidsvg/SVG;

    .line 1226
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1227
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1228
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1229
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1230
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1231
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    .line 1232
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1233
    return-void

    .line 1223
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<g>"

    const/4 v1, 0x0

    .line 905
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    .line 910
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->document:Lcom/caverock/androidsvg/SVG;

    .line 911
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Group;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 912
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 913
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 914
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 915
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 916
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 917
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 918
    return-void

    .line 908
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<image>"

    const/4 v1, 0x0

    .line 1006
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    .line 1011
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->document:Lcom/caverock/androidsvg/SVG;

    .line 1012
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Image;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1013
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1014
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1015
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1016
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1017
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    .line 1018
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1019
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1020
    return-void

    .line 1009
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<line>"

    const/4 v1, 0x0

    .line 1272
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1276
    new-instance v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    .line 1277
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->document:Lcom/caverock/androidsvg/SVG;

    .line 1278
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Line;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1279
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1280
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1281
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1282
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1283
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    .line 1284
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1285
    return-void

    .line 1275
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<linearGradiant>"

    const/4 v1, 0x0

    .line 1666
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1670
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    .line 1671
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 1672
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1673
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1674
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1675
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1676
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    .line 1677
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1678
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1679
    return-void

    .line 1669
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<marker>"

    const/4 v1, 0x0

    .line 1597
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1601
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    .line 1602
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->document:Lcom/caverock/androidsvg/SVG;

    .line 1603
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Marker;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1604
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1605
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1606
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1607
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1608
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    .line 1609
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1610
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1611
    return-void

    .line 1600
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<mask>"

    const/4 v1, 0x0

    .line 2087
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2089
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2091
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    .line 2092
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->document:Lcom/caverock/androidsvg/SVG;

    .line 2093
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Mask;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2094
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2095
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2096
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2097
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    .line 2098
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2099
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2100
    return-void

    .line 2090
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1191
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1193
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1191
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1200
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1203
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1204
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_1
    return-void

    .line 1194
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1912
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1914
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1915
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1912
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "objectBoundingBox"

    .line 1918
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "userSpaceOnUse"

    .line 1920
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1923
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute clipPathUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1919
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 1921
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 1930
    :cond_2
    return-void

    .line 1915
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 1540
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1542
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1543
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1540
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1546
    :sswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    goto :goto_1

    .line 1549
    :sswitch_1
    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    goto :goto_1

    .line 1552
    :sswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    goto :goto_1

    .line 1555
    :sswitch_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    goto :goto_1

    .line 1558
    :sswitch_4
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1559
    if-nez v3, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1560
    :goto_2
    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    goto :goto_1

    .line 1559
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 1566
    :cond_1
    return-void

    .line 1543
    nop

    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_4
        0x4a -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2541
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2543
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "id"

    .line 2544
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2546
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 2561
    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "xml:id"

    .line 2544
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "xml:space"

    .line 2549
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2550
    :cond_3
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "default"

    .line 2551
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "preserve"

    .line 2553
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2556
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2552
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_1

    .line 2554
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1238
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1240
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1241
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1238
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1247
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1250
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1251
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1256
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_1
    return-void

    .line 1241
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x39 -> :sswitch_2
        0x3a -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1684
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1686
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1687
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1684
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "objectBoundingBox"

    .line 1690
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "userSpaceOnUse"

    .line 1692
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1695
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute gradientUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 1693
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 1699
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1704
    :sswitch_2
    :try_start_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1705
    :catch_0
    move-exception v0

    .line 1708
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid spreadMethod attribute. \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" is not a valid value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    const-string/jumbo v3, "http://www.w3.org/1999/xlink"

    .line 1712
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1714
    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    goto :goto_1

    .line 1720
    :cond_3
    return-void

    .line 1687
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1025
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1027
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1025
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1034
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1037
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1038
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <use> element. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1043
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <use> element. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string/jumbo v2, "http://www.w3.org/1999/xlink"

    .line 1047
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_1

    .line 1052
    :sswitch_5
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1

    .line 1058
    :cond_1
    return-void

    .line 1028
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x31 -> :sswitch_5
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1290
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1292
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1290
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1299
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1302
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1305
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1311
    :cond_0
    return-void

    .line 1293
    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1725
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1727
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1728
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1725
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1731
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1734
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1737
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1740
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1746
    :cond_0
    return-void

    .line 1728
    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1616
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1618
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1619
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1616
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1622
    :sswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1625
    :sswitch_1
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1628
    :sswitch_2
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1629
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1630
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    :sswitch_3
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 1634
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string/jumbo v3, "strokeWidth"

    .line 1638
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "userSpaceOnUse"

    .line 1640
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1643
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute markerUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :cond_1
    iput-boolean v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    .line 1641
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "auto"

    .line 1647
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1650
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    :cond_3
    const/high16 v2, 0x7fc00000    # NaNf

    .line 1648
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    .line 1657
    :cond_4
    return-void

    .line 1619
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_2
        0x2a -> :sswitch_5
        0x33 -> :sswitch_0
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 2105
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 2107
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2108
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2105
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "objectBoundingBox"

    .line 2111
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "userSpaceOnUse"

    .line 2113
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2116
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute maskUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2112
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2114
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "objectBoundingBox"

    .line 2120
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "userSpaceOnUse"

    .line 2122
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2125
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute maskContentUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2121
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2123
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2129
    :sswitch_2
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2132
    :sswitch_3
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2135
    :sswitch_4
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2136
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2137
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :sswitch_5
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2141
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2142
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2148
    :cond_5
    return-void

    .line 2108
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_5
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
        0x52 -> :sswitch_4
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1085
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1087
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1085
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1091
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    goto :goto_1

    .line 1094
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    .line 1095
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1096
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_1
    return-void

    .line 1088
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 2006
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 2008
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2009
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2006
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "objectBoundingBox"

    .line 2012
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "userSpaceOnUse"

    .line 2014
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2017
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute patternUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2013
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2015
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "objectBoundingBox"

    .line 2021
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "userSpaceOnUse"

    .line 2023
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2026
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid value for attribute patternContentUnits"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2022
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2024
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2030
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_1

    .line 2033
    :sswitch_3
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2036
    :sswitch_4
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2039
    :sswitch_5
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2040
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2041
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2044
    :sswitch_6
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2045
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2046
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_7
    const-string/jumbo v3, "http://www.w3.org/1999/xlink"

    .line 2049
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2051
    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto/16 :goto_1

    .line 2057
    :cond_5
    return-void

    .line 2009
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x2f -> :sswitch_0
        0x52 -> :sswitch_5
        0x53 -> :sswitch_3
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    move v4, v2

    .line 1341
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 1343
    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-eq v0, v1, :cond_1

    .line 1341
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1345
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 1346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1349
    :goto_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1350
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 1351
    if-eqz v3, :cond_2

    .line 1353
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1354
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 1355
    if-eqz v5, :cond_3

    .line 1357
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1358
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1352
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1363
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1364
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v6, v1

    move v1, v3

    goto :goto_2

    .line 1368
    :cond_5
    return-void
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1773
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1775
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1776
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1773
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1779
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1782
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1785
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1786
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1787
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1793
    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1799
    :cond_1
    return-void

    .line 1776
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1129
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1131
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1132
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1129
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1138
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1141
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1142
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1147
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :sswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1152
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :sswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1157
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_1
    return-void

    .line 1132
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x39 -> :sswitch_4
        0x3a -> :sswitch_5
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 868
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 870
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 868
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 877
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 880
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 881
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 886
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :sswitch_4
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    goto :goto_1

    .line 896
    :cond_1
    return-void

    .line 871
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x50 -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1827
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1829
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1830
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1827
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1833
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    goto :goto_1

    .line 1839
    :cond_0
    return-void

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2569
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2571
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2572
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2577
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 2588
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_1

    .line 2590
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2580
    :sswitch_0
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    goto :goto_2

    .line 2584
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    goto :goto_2

    .line 2589
    :cond_1
    new-instance v1, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    goto :goto_1

    .line 2594
    :cond_2
    return-void

    .line 2577
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x49 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1499
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1501
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1499
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "http://www.w3.org/1999/xlink"

    .line 1505
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    goto :goto_1

    .line 1513
    :cond_1
    return-void

    .line 1502
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1961
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1963
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1964
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1961
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "http://www.w3.org/1999/xlink"

    .line 1967
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1969
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    goto :goto_1

    .line 1972
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1978
    :cond_1
    return-void

    .line 1964
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1418
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1420
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1421
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1418
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1424
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    goto :goto_1

    .line 1427
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    goto :goto_1

    .line 1430
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    goto :goto_1

    .line 1433
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    goto :goto_1

    .line 1439
    :cond_0
    return-void

    .line 1421
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2879
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2881
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-eq v1, v2, :cond_0

    .line 2879
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2883
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 2886
    :cond_1
    return-void
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 967
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 969
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 967
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 976
    :sswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 979
    :sswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 980
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <use> element. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :sswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 985
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid <use> element. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string/jumbo v2, "http://www.w3.org/1999/xlink"

    .line 989
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_1

    .line 997
    :cond_1
    return-void

    .line 970
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2859
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2861
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2862
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 2859
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2865
    :sswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 2868
    :sswitch_1
    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1

    .line 2874
    :cond_0
    return-void

    .line 2862
    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_1
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3973
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V

    .line 3974
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 3975
    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "auto"

    .line 3536
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3538
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rect("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3541
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3544
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3545
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3546
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 3547
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3548
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    .line 3549
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3550
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    .line 3552
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3553
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3556
    new-instance v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3537
    return-object v0

    .line 3539
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3554
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad rect() clip definition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 3208
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 3229
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rgb("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3247
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    return-object v0

    .line 3212
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 3214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 3221
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad hex colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3226
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3213
    :cond_1
    :try_start_1
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 3215
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 3216
    and-int/lit16 v1, v0, 0xf00

    .line 3217
    and-int/lit16 v2, v0, 0xf0

    .line 3218
    and-int/lit8 v0, v0, 0xf

    .line 3219
    new-instance v3, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v4, v1, 0x10

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 3231
    :cond_3
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3234
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v1

    .line 3235
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3236
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v2

    .line 3237
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3238
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v3

    .line 3240
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3241
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3243
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v0

    .line 3242
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad rgb() colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xff

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 3254
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3255
    const/16 v4, 0x25

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3260
    if-ltz v0, :cond_3

    if-gt v0, v3, :cond_4

    .line 3261
    :goto_0
    return v0

    .line 3257
    :cond_0
    if-ltz v0, :cond_1

    if-gt v0, v1, :cond_2

    .line 3258
    :goto_1
    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_1
    move v0, v2

    .line 3257
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 3260
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3269
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3270
    if-eqz v0, :cond_0

    .line 3273
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1

    .line 3271
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid colour keyword: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "none"

    .line 3193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "currentColor"

    .line 3195
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3198
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3194
    return-object v0

    .line 3196
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    return-object v0
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "nonzero"

    .line 3435
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "evenodd"

    .line 3437
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3439
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid fill-rule property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3436
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object v0

    .line 3438
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object v0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3084
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 3085
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid float value (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3088
    :catch_0
    move-exception v0

    .line 3092
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid float value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7c

    const/16 v6, 0x2f

    const/4 v0, 0x0

    const-string/jumbo v1, "|caption|icon|menu|message-box|small-caption|status-bar|"

    .line 3288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 3292
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v5, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    move-object v3, v0

    .line 3296
    :cond_0
    :goto_0
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 3297
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3298
    if-eqz v2, :cond_5

    .line 3300
    if-nez v0, :cond_6

    :cond_1
    const-string/jumbo v4, "normal"

    .line 3302
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3304
    if-eqz v0, :cond_7

    move-object v4, v0

    .line 3309
    :goto_1
    if-eqz v3, :cond_8

    move-object v0, v3

    .line 3315
    :cond_2
    if-eqz v1, :cond_9

    .line 3324
    :cond_3
    :goto_2
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3327
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3338
    :goto_3
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3340
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3341
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 3342
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 3343
    if-eqz v0, :cond_d

    :goto_5
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3344
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1e000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 3345
    return-void

    .line 3289
    :cond_4
    return-void

    .line 3299
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid font style attribute: missing font size and family"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3300
    :cond_6
    if-eqz v3, :cond_1

    move-object v4, v0

    move-object v0, v3

    .line 3301
    goto :goto_2

    .line 3305
    :cond_7
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3306
    if-nez v0, :cond_0

    move-object v4, v0

    goto :goto_1

    .line 3310
    :cond_8
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3311
    if-eqz v0, :cond_2

    move-object v3, v0

    move-object v0, v4

    .line 3312
    goto :goto_0

    :cond_9
    const-string/jumbo v1, "small-caps"

    .line 3315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    move-object v3, v0

    move-object v0, v4

    .line 3294
    goto :goto_0

    .line 3329
    :cond_a
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3330
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 3331
    if-eqz v2, :cond_b

    .line 3333
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 3334
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_3

    .line 3332
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid font style attribute: missing line-height"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/16 v1, 0x190

    .line 3342
    goto :goto_4

    .line 3343
    :cond_d
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto :goto_5
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3352
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3355
    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v1

    .line 3356
    if-eqz v1, :cond_2

    .line 3358
    :goto_0
    if-eqz v1, :cond_1

    .line 3360
    if-eqz v0, :cond_3

    .line 3362
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3364
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3367
    :cond_1
    return-object v0

    .line 3357
    :cond_2
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3361
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    .line 3375
    if-eqz v0, :cond_0

    .line 3378
    :goto_0
    return-object v0

    .line 3376
    :cond_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3397
    if-eqz v0, :cond_0

    .line 3400
    return-object v0

    .line 3398
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid font-style property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3386
    if-eqz v0, :cond_0

    .line 3389
    return-object v0

    .line 3387
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid font-weight property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "none"

    .line 3920
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "url("

    .line 3922
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3923
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 3921
    return-object v0

    :cond_2
    const-string/jumbo v0, ")"

    .line 3922
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 3925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    .line 1844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1846
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1849
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-eq v4, v5, :cond_2

    :goto_0
    const/4 v4, 0x0

    .line 1855
    :try_start_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1856
    if-nez v0, :cond_3

    move v0, v1

    .line 1858
    :goto_1
    cmpg-float v1, v0, v2

    if-gez v1, :cond_4

    move v0, v2

    :cond_0
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1845
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1850
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 1851
    const/4 v0, 0x1

    goto :goto_0

    .line 1857
    :cond_3
    div-float v0, v1, v3

    goto :goto_1

    .line 1858
    :cond_4
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    move v0, v3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1862
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid offset value in <stop>: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3021
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3024
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3025
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    .line 3027
    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    .line 3030
    if-gt v1, v3, :cond_3

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 3041
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 3042
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v2, v1, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 3022
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid length value (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3028
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 3029
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_0

    .line 3030
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3031
    add-int/lit8 v1, v1, -0x2

    .line 3032
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3034
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3035
    :catch_0
    move-exception v0

    .line 3036
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid length unit specifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3042
    :catch_1
    move-exception v0

    .line 3046
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid length value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3056
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3059
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3061
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3064
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3066
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3067
    if-eqz v3, :cond_1

    .line 3069
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v0

    .line 3070
    if-eqz v0, :cond_2

    .line 3072
    :goto_1
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v4, v3, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3073
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_0

    .line 3057
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid length list (empty string)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3068
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid length list value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3071
    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_1

    .line 3075
    :cond_3
    return-object v1
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 2

    .prologue
    const-string/jumbo v0, "auto"

    .line 3562
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3565
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    return-object v0

    .line 3563
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    return-object v0
.end method

.method private static parseOpacity(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 3102
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3103
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "visible"

    .line 3525
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3526
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    const-string/jumbo v0, "auto"

    .line 3525
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "hidden"

    .line 3527
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3528
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_3
    const-string/jumbo v0, "scroll"

    .line 3527
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3529
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid toverflow property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "url("

    .line 3172
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3187
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ")"

    .line 3174
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    .line 3175
    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    .line 3178
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    .line 3181
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 3184
    :goto_0
    new-instance v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object v1

    .line 3176
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " attribute. Unterminated url() reference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    goto :goto_0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3586
    new-instance v15, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3596
    new-instance v1, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    .line 3598
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3601
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x4d

    .line 3603
    if-ne v8, v9, :cond_2

    :cond_0
    move v9, v4

    move v10, v5

    move v11, v8

    move v5, v7

    move v4, v6

    .line 3608
    :goto_0
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3610
    sparse-switch v11, :sswitch_data_0

    .line 3833
    return-object v1

    .line 3599
    :cond_1
    return-object v1

    :cond_2
    const/16 v9, 0x6d

    .line 3603
    if-eq v8, v9, :cond_0

    .line 3604
    return-object v1

    .line 3615
    :sswitch_0
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3616
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3617
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3618
    if-eqz v2, :cond_4

    const/16 v6, 0x6d

    .line 3623
    if-eq v11, v6, :cond_5

    .line 3627
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    .line 3628
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3629
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/16 v2, 0x6d

    .line 3631
    if-eq v11, v2, :cond_6

    const/16 v2, 0x4c

    :goto_2
    move v4, v9

    move v5, v3

    move v6, v9

    move v7, v3

    move v8, v2

    move v2, v9

    .line 3836
    :goto_3
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3837
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 3841
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v9

    if-nez v9, :cond_19

    move v9, v4

    move v10, v5

    move v11, v8

    move v5, v7

    move v4, v6

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "SVGParser"

    .line 3619
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    return-object v1

    .line 3623
    :cond_5
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3624
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3625
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_6
    const/16 v2, 0x6c

    .line 3631
    goto :goto_2

    .line 3637
    :sswitch_1
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3638
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3639
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3640
    if-eqz v2, :cond_7

    const/16 v6, 0x6c

    .line 3644
    if-eq v11, v6, :cond_8

    .line 3648
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3649
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3650
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v4, v9

    move v5, v10

    move v6, v2

    move v7, v3

    move v8, v11

    .line 3651
    goto :goto_3

    :cond_7
    const-string/jumbo v2, "SVGParser"

    .line 3641
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    return-object v1

    .line 3645
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3646
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_4

    .line 3656
    :sswitch_2
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 3657
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3658
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3659
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3660
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3661
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3662
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3663
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3664
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v12

    .line 3665
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3666
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v8

    .line 3667
    if-eqz v8, :cond_9

    const/16 v13, 0x63

    .line 3671
    if-eq v11, v13, :cond_a

    move-object v13, v8

    move-object v14, v12

    move-object v8, v2

    move-object v12, v3

    move-object v3, v6

    move-object v2, v7

    .line 3679
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3680
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3681
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3682
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 3683
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v9

    move v5, v10

    move v8, v11

    .line 3684
    goto/16 :goto_3

    :cond_9
    const-string/jumbo v2, "SVGParser"

    .line 3668
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    return-object v1

    .line 3672
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 3673
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 3674
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3675
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3676
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3677
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v13, v8

    move-object v14, v12

    move-object v8, v2

    move-object v12, v3

    move-object v3, v6

    move-object v2, v7

    goto/16 :goto_5

    :sswitch_3
    const/high16 v6, 0x40000000    # 2.0f

    .line 3689
    mul-float/2addr v6, v5

    sub-float v3, v6, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const/high16 v3, 0x40000000    # 2.0f

    .line 3690
    mul-float/2addr v3, v4

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 3691
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3692
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3693
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3694
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3695
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 3696
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3697
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3698
    if-eqz v6, :cond_b

    const/16 v8, 0x73

    .line 3702
    if-eq v11, v8, :cond_c

    move-object v8, v2

    move-object v12, v3

    move-object v13, v6

    move-object v14, v7

    .line 3708
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3709
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3710
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3711
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 3712
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v9

    move v5, v10

    move v8, v11

    .line 3713
    goto/16 :goto_3

    :cond_b
    const-string/jumbo v2, "SVGParser"

    .line 3699
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    return-object v1

    .line 3703
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3704
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3705
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3706
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v8, v2

    move-object v12, v3

    move-object v13, v6

    move-object v14, v7

    goto :goto_6

    .line 3718
    :sswitch_4
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    move v2, v9

    move v3, v10

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v10

    move v8, v11

    .line 3721
    goto/16 :goto_3

    .line 3726
    :sswitch_5
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3727
    if-eqz v3, :cond_d

    const/16 v6, 0x68

    .line 3731
    if-eq v11, v6, :cond_e

    .line 3734
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3735
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v5, v10

    move v6, v4

    move v7, v3

    move v8, v11

    move v4, v9

    .line 3736
    goto/16 :goto_3

    :cond_d
    const-string/jumbo v2, "SVGParser"

    .line 3728
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    return-object v1

    .line 3732
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_7

    .line 3741
    :sswitch_6
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3742
    if-eqz v2, :cond_f

    const/16 v6, 0x76

    .line 3746
    if-eq v11, v6, :cond_10

    .line 3749
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3750
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v4, v9

    move v6, v2

    move v7, v5

    move v8, v11

    move v5, v10

    .line 3751
    goto/16 :goto_3

    :cond_f
    const-string/jumbo v2, "SVGParser"

    .line 3743
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    return-object v1

    .line 3747
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_8

    .line 3756
    :sswitch_7
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3757
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3758
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3759
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3760
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 3761
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3762
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3763
    if-eqz v6, :cond_11

    const/16 v8, 0x71

    .line 3767
    if-eq v11, v8, :cond_12

    move-object v4, v6

    move-object v5, v7

    .line 3773
    :goto_9
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v1, v6, v7, v8, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3774
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3775
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3776
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 3777
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v4, v9

    move v5, v10

    move v8, v11

    .line 3778
    goto/16 :goto_3

    :cond_11
    const-string/jumbo v2, "SVGParser"

    .line 3764
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    return-object v1

    .line 3768
    :cond_12
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3769
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3770
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3771
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v4, v6

    move-object v5, v7

    goto :goto_9

    :sswitch_8
    const/high16 v6, 0x40000000    # 2.0f

    .line 3783
    mul-float/2addr v6, v5

    sub-float v3, v6, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/high16 v3, 0x40000000    # 2.0f

    .line 3784
    mul-float/2addr v3, v4

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3785
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3786
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3787
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3788
    if-eqz v2, :cond_13

    const/16 v8, 0x74

    .line 3792
    if-eq v11, v8, :cond_14

    .line 3796
    :goto_a
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v1, v4, v5, v8, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3797
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 3798
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3799
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3800
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v6, v2

    move v7, v3

    move v8, v11

    move v2, v4

    move v3, v5

    move v5, v10

    move v4, v9

    .line 3801
    goto/16 :goto_3

    :cond_13
    const-string/jumbo v2, "SVGParser"

    .line 3789
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    return-object v1

    .line 3793
    :cond_14
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3794
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_a

    .line 3806
    :sswitch_9
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 3807
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3808
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v8

    .line 3809
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3810
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v14

    .line 3811
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3812
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v16

    .line 3813
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3814
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v17

    .line 3815
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3816
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3817
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3818
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3819
    if-nez v2, :cond_16

    :cond_15
    const-string/jumbo v2, "SVGParser"

    .line 3820
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad path coords for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    return-object v1

    .line 3819
    :cond_16
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v12, 0x0

    cmpg-float v6, v6, v12

    if-gez v6, :cond_17

    const/4 v6, 0x1

    :goto_b
    if-nez v6, :cond_15

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v12, 0x0

    cmpg-float v6, v6, v12

    if-ltz v6, :cond_15

    const/16 v6, 0x61

    .line 3823
    if-eq v11, v6, :cond_18

    move-object v12, v2

    move-object v13, v3

    .line 3827
    :goto_c
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    .line 3828
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3829
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v4, v9

    move v5, v10

    move v6, v2

    move v7, v3

    move v8, v11

    .line 3830
    goto/16 :goto_3

    .line 3819
    :cond_17
    const/4 v6, 0x0

    goto :goto_b

    .line 3824
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 3825
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v12, v2

    move-object v13, v3

    goto :goto_c

    .line 3843
    :cond_19
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v4

    move v10, v5

    move v11, v8

    move v5, v7

    move v4, v6

    .line 3606
    goto/16 :goto_0

    .line 3846
    :cond_1a
    return-object v1

    .line 3610
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_2
        0x48 -> :sswitch_5
        0x4c -> :sswitch_1
        0x4d -> :sswitch_0
        0x51 -> :sswitch_7
        0x53 -> :sswitch_3
        0x54 -> :sswitch_8
        0x56 -> :sswitch_6
        0x5a -> :sswitch_4
        0x61 -> :sswitch_9
        0x63 -> :sswitch_2
        0x68 -> :sswitch_5
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
        0x71 -> :sswitch_7
        0x73 -> :sswitch_3
        0x74 -> :sswitch_8
        0x76 -> :sswitch_6
        0x7a -> :sswitch_4
    .end sparse-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3139
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3145
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "defer"

    .line 3146
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3150
    :goto_0
    sget-object v3, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 3151
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3153
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3163
    :goto_1
    new-instance v2, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3164
    return-void

    .line 3147
    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3148
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3154
    :cond_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "meet"

    .line 3155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "slice"

    .line 3157
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3160
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid preserveAspectRatio definition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3156
    :cond_2
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_1

    .line 3158
    :cond_3
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_1
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3858
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3859
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3861
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3863
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http://www.w3.org/TR/SVG11/feature#"

    .line 3864
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v2, "UNSUPPORTED"

    .line 3870
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3872
    :goto_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "http://www.w3.org/TR/SVG11/feature#"

    .line 3865
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3874
    :cond_1
    return-object v1
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3905
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3906
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3908
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3910
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 3911
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3912
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    .line 3914
    :cond_0
    return-object v1
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3472
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3475
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3478
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 3479
    if-eqz v2, :cond_1

    .line 3481
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3484
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    .line 3486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3487
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3488
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3490
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3491
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 3492
    if-eqz v2, :cond_3

    .line 3494
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3496
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3497
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_0

    .line 3476
    :cond_0
    return-object v5

    .line 3480
    :cond_1
    return-object v5

    .line 3482
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3493
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3495
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v1, 0x0

    .line 3502
    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 3503
    return-object v5

    .line 3505
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    return-object v0
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "butt"

    .line 3446
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "round"

    .line 3448
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "square"

    .line 3450
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3452
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid stroke-linecap property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3447
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object v0

    .line 3449
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object v0

    .line 3451
    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object v0
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "miter"

    .line 3459
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "round"

    .line 3461
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "bevel"

    .line 3463
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3465
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid stroke-linejoin property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3460
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3462
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0

    .line 3464
    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object v0
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3b

    const/16 v4, 0x3a

    .line 2602
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string/jumbo v1, "/\\*.*?\\*/"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 2606
    :goto_0
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 2607
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2608
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2610
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2611
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 2612
    if-eqz v2, :cond_3

    .line 2614
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2615
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2617
    :cond_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v3, :cond_2

    .line 2619
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v3, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    .line 2615
    :cond_1
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2618
    :cond_2
    new-instance v3, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    goto :goto_1

    .line 2623
    :cond_3
    return-void
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3882
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3883
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3885
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3887
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    .line 3888
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    .line 3889
    if-ne v3, v4, :cond_0

    .line 3893
    :goto_1
    new-instance v3, Ljava/util/Locale;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct {v3, v0, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3894
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3895
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0

    .line 3890
    :cond_0
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3897
    :cond_1
    return-object v2
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "start"

    .line 3512
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "middle"

    .line 3514
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "end"

    .line 3516
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3518
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid text-anchor property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3513
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 3515
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 3517
    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "none"

    .line 3407
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "underline"

    .line 3409
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "overline"

    .line 3411
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "line-through"

    .line 3413
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "blink"

    .line 3415
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3417
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid text-decoration property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3408
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3410
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3412
    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3414
    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0

    .line 3416
    :cond_4
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ltr"

    .line 3424
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "rtl"

    .line 3426
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3428
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid direction property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3425
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0

    .line 3427
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x29

    const/4 v10, 0x0

    .line 2891
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2893
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2896
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2898
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v2

    .line 2900
    if-eqz v2, :cond_0

    const-string/jumbo v3, "matrix"

    .line 2903
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "translate"

    .line 2926
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "scale"

    .line 2941
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "rotate"

    .line 2956
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "skewX"

    .line 2975
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "skewY"

    .line 2986
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 2997
    if-nez v2, :cond_17

    .line 3001
    :goto_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 3003
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_0

    .line 2901
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad transform function encountered in transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2905
    :cond_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2906
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2907
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2908
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2909
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2910
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 2911
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2912
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 2913
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2914
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 2915
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2916
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 2917
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2919
    if-nez v7, :cond_3

    .line 2920
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2919
    :cond_3
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2922
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/16 v9, 0x9

    .line 2923
    new-array v9, v9, [F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v9, v10

    const/4 v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v9, v2

    const/4 v2, 0x2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v9, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v9, v2

    const/4 v2, 0x4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v9, v2

    const/4 v2, 0x5

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v9, v2

    const/4 v2, 0x6

    aput v12, v9, v2

    const/4 v2, 0x7

    aput v12, v9, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2924
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_1

    .line 2928
    :cond_4
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2929
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2930
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2931
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2933
    if-nez v2, :cond_6

    .line 2934
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2933
    :cond_6
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2936
    if-eqz v3, :cond_7

    .line 2939
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    .line 2937
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    .line 2943
    :cond_8
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2944
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2945
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2946
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2948
    if-nez v2, :cond_a

    .line 2949
    :cond_9
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2948
    :cond_a
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2951
    if-eqz v3, :cond_b

    .line 2954
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    .line 2952
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    .line 2958
    :cond_c
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2959
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2960
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2961
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 2962
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2964
    if-nez v2, :cond_e

    .line 2965
    :cond_d
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2964
    :cond_e
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2967
    if-eqz v3, :cond_f

    .line 2969
    if-nez v4, :cond_10

    .line 2972
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2968
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_1

    .line 2970
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    .line 2977
    :cond_11
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2978
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2979
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2981
    if-nez v2, :cond_13

    .line 2982
    :cond_12
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2981
    :cond_13
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2984
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    .line 2988
    :cond_14
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2989
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2990
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2992
    if-nez v2, :cond_16

    .line 2993
    :cond_15
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2992
    :cond_16
    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2995
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v12, v2}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    .line 2998
    :cond_17
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid transform list fn: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3006
    :cond_18
    return-object v0
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "none"

    .line 3572
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "non-scaling-stroke"

    .line 3574
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3576
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid vector-effect property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3573
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0

    .line 3575
    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3112
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3115
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3116
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3117
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3118
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3119
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 3120
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3121
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    .line 3123
    if-nez v1, :cond_1

    .line 3124
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid viewBox definition - should have four numbers"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3123
    :cond_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3125
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 3126
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid viewBox. width cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3127
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 3128
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid viewBox. height cannot be negative"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3130
    :cond_3
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v4
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<path>"

    const/4 v1, 0x0

    .line 1067
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    .line 1072
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->document:Lcom/caverock/androidsvg/SVG;

    .line 1073
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Path;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1074
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1075
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1076
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1077
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1078
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    .line 1079
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1080
    return-void

    .line 1070
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<pattern>"

    const/4 v1, 0x0

    .line 1987
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1989
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1991
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    .line 1992
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    .line 1993
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1994
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1995
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1996
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1997
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1998
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    .line 1999
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2000
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2001
    return-void

    .line 1990
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<polygon>"

    const/4 v1, 0x0

    .line 1377
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1381
    new-instance v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    .line 1382
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->document:Lcom/caverock/androidsvg/SVG;

    .line 1383
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Polygon;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1384
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1385
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1386
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1387
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string/jumbo v1, "polygon"

    .line 1388
    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1390
    return-void

    .line 1380
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<polyline>"

    const/4 v1, 0x0

    .line 1320
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1324
    new-instance v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    .line 1325
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->document:Lcom/caverock/androidsvg/SVG;

    .line 1326
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1327
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1328
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1329
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1330
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string/jumbo v1, "polyline"

    .line 1331
    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1333
    return-void

    .line 1323
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x7c

    const/4 v0, 0x0

    .line 2628
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "inherit"

    .line 2631
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2634
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2854
    :goto_0
    :pswitch_0
    return-void

    .line 2629
    :cond_0
    return-void

    .line 2632
    :cond_1
    return-void

    :pswitch_1
    const-string/jumbo v0, "fill"

    .line 2637
    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2638
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2642
    :pswitch_2
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2643
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2647
    :pswitch_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2648
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "stroke"

    .line 2652
    invoke-static {p2, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2653
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2657
    :pswitch_5
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2658
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2662
    :pswitch_6
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2663
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2667
    :pswitch_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2668
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2672
    :pswitch_8
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2673
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_0

    .line 2677
    :pswitch_9
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2678
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v0, "none"

    .line 2682
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2685
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2686
    :goto_1
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2683
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2690
    :pswitch_b
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2691
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2695
    :pswitch_c
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 2696
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2700
    :pswitch_d
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 2701
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2705
    :pswitch_e
    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2709
    :pswitch_f
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2710
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2714
    :pswitch_10
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2715
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2719
    :pswitch_11
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2720
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2724
    :pswitch_12
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2725
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2729
    :pswitch_13
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2730
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2734
    :pswitch_14
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2735
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x1000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2739
    :pswitch_15
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2740
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2744
    :pswitch_16
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2745
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2749
    :pswitch_17
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2750
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2751
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2752
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0xe00000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2756
    :pswitch_18
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2757
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2761
    :pswitch_19
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2762
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2766
    :pswitch_1a
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2767
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2771
    :pswitch_1b
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 2772
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid value for \"display\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v1, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    .line 2771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_3

    const-string/jumbo v1, "none"

    .line 2773
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2774
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2778
    :pswitch_1c
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 2779
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid value for \"visibility\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v0, "|visible|hidden|collapse|"

    .line 2778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_6

    const-string/jumbo v0, "visible"

    .line 2780
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2781
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_1d
    const-string/jumbo v0, "currentColor"

    .line 2785
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2788
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2790
    :goto_2
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x4000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2786
    :cond_8
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_2

    .line 2794
    :pswitch_1e
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2795
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2799
    :pswitch_1f
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2800
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2804
    :pswitch_20
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2805
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2809
    :pswitch_21
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2810
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2814
    :pswitch_22
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2815
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_23
    const-string/jumbo v0, "currentColor"

    .line 2819
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2822
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2824
    :goto_3
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2820
    :cond_9
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_3

    .line 2828
    :pswitch_24
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 2829
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    :pswitch_25
    const-string/jumbo v0, "currentColor"

    .line 2833
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2836
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2838
    :goto_4
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2834
    :cond_a
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_4

    .line 2842
    :pswitch_26
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2843
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2847
    :pswitch_27
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2848
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_0

    .line 2634
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<radialGradient>"

    const/4 v1, 0x0

    .line 1755
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1759
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    .line 1760
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->document:Lcom/caverock/androidsvg/SVG;

    .line 1761
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1762
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1763
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1764
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1765
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    .line 1766
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1767
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1768
    return-void

    .line 1758
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<rect>"

    const/4 v1, 0x0

    .line 1111
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1115
    new-instance v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    .line 1116
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->document:Lcom/caverock/androidsvg/SVG;

    .line 1117
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1118
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1119
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1120
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1121
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1122
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    .line 1123
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1124
    return-void

    .line 1114
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<solidColor>"

    const/4 v1, 0x0

    .line 1873
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1877
    new-instance v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    .line 1878
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->document:Lcom/caverock/androidsvg/SVG;

    .line 1879
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1880
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1881
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1882
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1883
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1884
    return-void

    .line 1876
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "<stop>"

    .line 1808
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1810
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v0, :cond_1

    .line 1814
    new-instance v0, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    .line 1815
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->document:Lcom/caverock/androidsvg/SVG;

    .line 1816
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Stop;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1817
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1818
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1819
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    .line 1820
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1821
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1822
    return-void

    .line 1811
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1813
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "<style>"

    .line 3937
    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3939
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "all"

    move v3, v0

    move v2, v4

    move-object v0, v1

    .line 3946
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 3948
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3949
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    move v1, v2

    .line 3946
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 3940
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v2, "text/css"

    .line 3952
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :sswitch_1
    move-object v0, v1

    move v1, v2

    .line 3956
    goto :goto_1

    .line 3962
    :cond_1
    if-nez v2, :cond_3

    .line 3965
    :cond_2
    iput-boolean v4, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 3966
    iput v4, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 3968
    :goto_2
    return-void

    .line 3962
    :cond_3
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3963
    iput-boolean v4, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    goto :goto_2

    .line 3949
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<svg>"

    const/4 v1, 0x0

    .line 847
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    .line 850
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->document:Lcom/caverock/androidsvg/SVG;

    .line 851
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 852
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 853
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 854
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 855
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 856
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    .line 857
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 862
    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 863
    return-void

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto :goto_0
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<symbol>"

    const/4 v1, 0x0

    .line 1575
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1579
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    .line 1580
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->document:Lcom/caverock/androidsvg/SVG;

    .line 1581
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1582
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1583
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1584
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1585
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1586
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1587
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1588
    return-void

    .line 1578
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<text>"

    const/4 v1, 0x0

    .line 1399
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1403
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    .line 1404
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->document:Lcom/caverock/androidsvg/SVG;

    .line 1405
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Text;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1406
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1407
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1408
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1409
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1410
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1411
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1412
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1413
    return-void

    .line 1402
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "<textPath>"

    .line 1939
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1943
    new-instance v1, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    .line 1944
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    .line 1945
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1946
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1947
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1948
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1949
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    .line 1950
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1951
    iput-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1952
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-nez v0, :cond_1

    .line 1955
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1956
    :goto_0
    return-void

    .line 1942
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1953
    :cond_1
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "<tref>"

    .line 1476
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1482
    new-instance v1, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    .line 1483
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->document:Lcom/caverock/androidsvg/SVG;

    .line 1484
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1485
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1486
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1487
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1488
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    .line 1489
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1490
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-nez v0, :cond_2

    .line 1493
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1494
    :goto_0
    return-void

    .line 1479
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_2
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "<tspan>"

    .line 1448
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1454
    new-instance v1, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    .line 1455
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->document:Lcom/caverock/androidsvg/SVG;

    .line 1456
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1457
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1458
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1459
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1460
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1461
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1462
    iput-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1463
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-nez v0, :cond_2

    .line 1466
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    .line 1467
    :goto_0
    return-void

    .line 1451
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_2
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<use>"

    const/4 v1, 0x0

    .line 948
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    .line 953
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    .line 954
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Use;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 955
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 956
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 957
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 958
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 959
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    .line 960
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 961
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 962
    return-void

    .line 951
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<view>"

    const/4 v1, 0x0

    .line 2066
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2068
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2070
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    .line 2071
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->document:Lcom/caverock/androidsvg/SVG;

    .line 2072
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$View;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2073
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2074
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2075
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2076
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2077
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2078
    return-void

    .line 2069
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<switch>"

    const/4 v1, 0x0

    .line 1522
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1524
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    .line 1527
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->document:Lcom/caverock/androidsvg/SVG;

    .line 1528
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Switch;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1529
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1530
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1531
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1532
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1533
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1534
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1535
    return-void

    .line 1525
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-nez v0, :cond_0

    .line 694
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-nez v0, :cond_1

    .line 702
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-nez v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v0, :cond_5

    .line 726
    :goto_0
    return-void

    .line 692
    :cond_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 698
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 699
    return-void

    .line 697
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 706
    :goto_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 707
    return-void

    .line 705
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    .line 715
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 716
    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 717
    :goto_3
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-nez v1, :cond_7

    .line 722
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    new-instance v1, Lcom/caverock/androidsvg/SVG$TextSequence;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 716
    goto :goto_3

    .line 719
    :cond_7
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-nez v0, :cond_0

    .line 737
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-nez v0, :cond_1

    .line 745
    return-void

    .line 733
    :cond_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 741
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 742
    return-void

    .line 740
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->endDocument()V

    .line 815
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 751
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/2000/svg"

    .line 760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "title"

    .line 764
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    :cond_2
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 766
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 768
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    const-string/jumbo v1, "desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 771
    return-void

    .line 754
    :cond_3
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_0

    .line 755
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 756
    return-void

    :cond_4
    const-string/jumbo v0, ""

    .line 760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    return-void

    :cond_5
    const-string/jumbo v0, "desc"

    .line 764
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "style"

    .line 774
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_6
    const-string/jumbo v0, "svg"

    .line 782
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 801
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 804
    :goto_1
    return-void

    .line 767
    :cond_8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_9
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    .line 775
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 776
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 778
    return-void

    :cond_b
    const-string/jumbo v0, "defs"

    .line 783
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "g"

    .line 784
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "use"

    .line 785
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "image"

    .line 786
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "text"

    .line 787
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "tspan"

    .line 788
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "switch"

    .line 789
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "symbol"

    .line 790
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "marker"

    .line 791
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "linearGradient"

    .line 792
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "radialGradient"

    .line 793
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "stop"

    .line 794
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "clipPath"

    .line 795
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "textPath"

    .line 796
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "pattern"

    .line 797
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "view"

    .line 798
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "mask"

    .line 799
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "solidColor"

    .line 800
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1
.end method

.method protected parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 572
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 574
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string/jumbo v1, "http://xml.org/sax/properties/lexical-handler"

    .line 575
    invoke-interface {v0, v1, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 590
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-object v0

    .line 577
    :catch_0
    move-exception v0

    .line 580
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string/jumbo v2, "File error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 584
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string/jumbo v2, "XML Parser problem"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 588
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SVG parse error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setSupportedFormats([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    .line 558
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->supportedFormats:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    .line 603
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 604
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 612
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://www.w3.org/2000/svg"

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string/jumbo v0, "svg"

    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "g"

    .line 622
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "defs"

    .line 624
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "use"

    .line 626
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "path"

    .line 628
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "rect"

    .line 630
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "circle"

    .line 632
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "ellipse"

    .line 634
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "line"

    .line 636
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "polyline"

    .line 638
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "polygon"

    .line 640
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "text"

    .line 642
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "tspan"

    .line 644
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "tref"

    .line 646
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "switch"

    .line 648
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "symbol"

    .line 650
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "marker"

    .line 652
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "linearGradient"

    .line 654
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "radialGradient"

    .line 656
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "stop"

    .line 658
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "a"

    .line 660
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "title"

    .line 662
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 663
    :cond_1
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 664
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 685
    :goto_0
    return-void

    .line 613
    :cond_2
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 614
    return-void

    :cond_3
    const-string/jumbo v0, ""

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    return-void

    .line 621
    :cond_4
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 623
    :cond_5
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 625
    :cond_6
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 627
    :cond_7
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 629
    :cond_8
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 631
    :cond_9
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 633
    :cond_a
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 635
    :cond_b
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 637
    :cond_c
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 639
    :cond_d
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 641
    :cond_e
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 643
    :cond_f
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 645
    :cond_10
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 647
    :cond_11
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 649
    :cond_12
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 651
    :cond_13
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 653
    :cond_14
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 655
    :cond_15
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 657
    :cond_16
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 659
    :cond_17
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 661
    :cond_18
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_19
    const-string/jumbo v0, "desc"

    .line 662
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "clipPath"

    .line 665
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "textPath"

    .line 667
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "pattern"

    .line 669
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "image"

    .line 671
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "view"

    .line 673
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "mask"

    .line 675
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "style"

    .line 677
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "solidColor"

    .line 679
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 682
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 683
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_0

    .line 666
    :cond_1a
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 668
    :cond_1b
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 670
    :cond_1c
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 672
    :cond_1d
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 674
    :cond_1e
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 676
    :cond_1f
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 678
    :cond_20
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 680
    :cond_21
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0
.end method
